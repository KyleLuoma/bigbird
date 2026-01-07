from tools.query_database import query_database

def query_database_test() -> bool:
    query = "select * from customers limit 3"
    database = "debit_card_specializing"
    result_str = query_database(database_name=database, sql_query=query)
    return result_str == "[{'CustomerID': 3, 'Segment': 'SME', 'Currency': 'EUR'}, {'CustomerID': 5, 'Segment': 'LAM', 'Currency': 'EUR'}, {'CustomerID': 6, 'Segment': 'SME', 'Currency': 'EUR'}]"

def run():
    print("       tools.query_database.query_database():", query_database_test())