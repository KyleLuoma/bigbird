import openai
import httpx

from pathlib import Path
import sqlite3
from tqdm import tqdm

from tools.query_database import query_database
from tools.get_database_schema import get_schema, get_table_names


databases = [
    "california_schools", "card_games", "codebase_community", "debit_card_specializing", "european_football_2",
    "financial", "formula_1", "student_club", "superhero", "thrombosis_prediction", "toxicology"
    ]


def main():
    custom_http_client = httpx.Client(verify=False)

    client = openai.OpenAI(
        base_url="https://wire.westpoint.edu/vllm/v1",
        http_client=custom_http_client,
        api_key=""
    )

    for db in databases:

        print("Creating BIG version of", db)

        bigbird_path = Path(__file__).parent / "benchmarks" / "bigbird" / "bigbird_databases" / f"{db}_big.sqlite"
        bb_db = sqlite3.connect(bigbird_path)
        cursor = bb_db.cursor()
        schema = get_schema(db)

        bird_ddl = schema.lower().replace("create table", "create table if not exists")           
        for ddl in bird_ddl.split(";"):
            if "SQLITE_SEQUENCE" in ddl.upper():
                continue
            cursor.execute(ddl)
            bb_db.commit()

        bird_tables = get_table_names(db)
        bird_tables = [t[0] for t in bird_tables]

        for table in bird_tables:
            if table == "sqlite_sequence":
                continue
            cursor.execute(f"ALTER TABLE \"{table}\" RENAME TO \"{table}_\"")
            bb_db.commit()
            cursor.execute(f"ALTER TABLE \"{table}_\" RENAME TO \"{table}\"")
            bb_db.commit()

        for i in tqdm(range(100)):

            cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
            bb_tables = [t[0] for t in cursor.fetchall()]
            bb_tables = "\n".join(bb_tables)
            
            with open("./prompts/make_table.prompt") as f:
                creation_prompt = f.read()
            creation_prompt = creation_prompt.format(
                original_schema=schema,
                synthetic_tables=bb_tables
            )


            ddl_query = None
            try:
                chat_completion = client.chat.completions.create(
                    model="openai/gpt-oss-120b",
                    messages=[{"role": "user", "content": creation_prompt}]
                )
                ddl_query = chat_completion.choices[0].message.content
            
            except openai.APIConnectionError as e:
                print(f"Connection Error: {e}")
            except Exception as e:
                print(f"An unexpected error occurred: {e}")

            if ddl_query != None:
                try:
                    with open(f"./benchmarks/bigbird/bigbird_databases/generated_ddl/{db}_ddl_{i}.sql", "a", encoding="utf-8") as f:
                        f.write(ddl_query)
                except:
                    pass
                queries = ddl_query.split(";")
                for q in queries:
                    try:
                        cursor.execute(q)
                        bb_db.commit()
                    except sqlite3.OperationalError as e:
                        pass
                    except Exception as e:
                        pass


    
        

if __name__ == "__main__":
    main()