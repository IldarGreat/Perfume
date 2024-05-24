import pandas as pd
import psycopg2

from config import load_config

data = pd.read_excel('data.xlsx')
names = []
comments = []
for i in range(len(data._values)):
    names.append((data._values[i])[0])
    comments.append((data._values[i])[1])

config = load_config()
insert_name_sql = 'insert into snap_v1.perfume(name) values (%s) RETURNING id;'
upd = 'update snap_v1.perfume set comment = %s where name = %s'
conn = None
try:
    with psycopg2.connect(**config) as conn:
        cur = conn.cursor()
        for i, volume in enumerate(comments):
            cur.execute(upd, (comments[i], names[i]))

        conn.commit()
        cur.close()
except psycopg2.DatabaseError as error:
    if conn:
        conn.rollback()
    print(error)
finally:
    if conn:
        conn.close()
