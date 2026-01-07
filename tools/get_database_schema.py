from pathlib import Path
import sqlite3

def get_schema(database_name: str) -> str:
    """Get the schema of a database as SQLite CREATE TABLE statements."""

    dev_databases_path = Path(__file__).parent.parent / "benchmarks" / "bird_benchmark" / "dev_databases" / "dev_databases"   
    db_path = dev_databases_path / database_name / f"{database_name}.sqlite"

    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Get all table names
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = cursor.fetchall()

    schema_statements = []
    for table in tables:
        table_name = table[0]
        cursor.execute(f"SELECT sql FROM sqlite_master WHERE type='table' AND name='{table_name}';")
        create_statement = cursor.fetchone()[0]
        schema_statements.append(create_statement)

    conn.close()
    return '\n\n'.join(schema_statements)
