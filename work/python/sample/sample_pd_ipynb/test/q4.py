import os
from sqlalchemy import create_engine
import pandas as pd
pd.set_option('display.max_columns', 20)


def query_pandas(sql, db):
    """
    Executes a SQL query on a PostgreSQL database and returns the result as a Pandas DataFrame.

    Args:
        sql (str): The SQL query to execute.
        db (str): The name of the PostgreSQL database to connect to.

    Returns:
        pandas.DataFrame: The result of the SQL query as a Pandas DataFrame.
    """

    DATABASE_URL='postgresql://postgres:postgres@postgis_container:5432/{}'.format(db)
    conn = create_engine(DATABASE_URL)

    df = pd.read_sql(sql=sql, con=conn)

    return df

# " "のなかにSQL文を記述
sql = """SELECT name_1, COUNT(*)
FROM adm2
WHERE type_2 = 'Mura'
GROUP BY name_1
ORDER BY COUNT DESC"""



out = query_pandas(sql, 'gisdb') #specify db name
print(out)