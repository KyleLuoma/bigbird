from pathlib import Path
from langchain_community.utilities import SQLDatabase


def query_database(database_name: str, sql_query: str) -> str:
    """Execute a query over the target database and return a string representation of the result set (when applicable)."""
    dev_databases_path = Path(__file__).parent.parent / "bird_benchmark" / "dev_databases" / "dev_databases"
    
    db_path = dev_databases_path / database_name / f"{database_name}.sqlite"
    
    db = SQLDatabase.from_uri("sqlite:///" + str(db_path))
    result = db.run(command=sql_query, include_columns=True)
    print(result)
    return result
        