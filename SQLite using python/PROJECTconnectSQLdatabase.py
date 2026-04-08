import sqlite3
import pandas as pd
Database = 'mydatabase.sql'
Conn = sqlite3.connect(Database)
print('Database connection successful!')
Tables = pd.read_sql("SELECT * FROM Items;", Conn)
print(Tables)