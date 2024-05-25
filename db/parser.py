import pandas as pd
import psycopg2

from config import load_config

data = pd.read_excel('база.xlsx')
names = []
comments = []
for i in range(len(data._values)):
    names.append((data._values[i])[0])
    text = (data._values[i])[1]
    lines = text.split('\n')
    if i == 156 or i ==157 or i == 277 or i ==278 or i ==327 or i==328:
        high = lines[0].split(":")[1]
        middle = lines[1].split(":")[1]
        formatted_text = "<b>Верхние ноты</b>:" + high + "\n" + "<b>Средние ноты</b>:" + middle
    else:
        high = lines[0].split(":")[1]
        middle = lines[1].split(":")[1]
        base = lines[2].split(":")[1]
        formatted_text = "<b>Верхние ноты</b>:" + high + "\n" + "<b>Средние ноты</b>:" + middle + "\n" + "<b>Базовые ноты</b>:" + base
    comments.append(formatted_text)

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
