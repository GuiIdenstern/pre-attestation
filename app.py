import pandas as pd
import psycopg2
from sqlalchemy import create_engine

def process_data(engine):
    conn = engine.connect()

    data = pd.read_sql('Select min(age), max(age) from test_table Where length(name)<6', conn)

    return data

if __name__ == "__main__":
    db_user = 'postgres'
    db_password = 'password'
    db_host = 'db'
    db_port = '5432'
    db_name = 'test_db'

    engine = create_engine(f'postgresql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}')

    result = process_data(engine)

    print("Максимальное и минимальное значения возраста:")
    print(result)