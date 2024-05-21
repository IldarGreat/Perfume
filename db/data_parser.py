import pandas as pd
import psycopg2

from config import load_config

data = pd.read_excel('data.xlsx')
names = []
sexs = []
volumes = []
prices = []
notes = []
types = []
comments = []
ids = []
for i in range(len(data._values)):
    names.append((data._values[i])[1])
    sex = (data._values[i])[2]
    if sex == 'мужской':
        sex = 'm'
    elif sex == 'женский':
        sex = 'f'
    elif sex == 'унисекс':
        sex = 'u'
    sexs.append(sex)
    volumes.append((data._values[i])[3])
    prices.append((data._values[i])[4])
    notes.append((data._values[i])[5])
    types.append((data._values[i])[6])
    comments.append((data._values[i])[7])

config = load_config()
insert_name_sql = 'insert into snap_v1.perfume(name) values (%s) RETURNING id;'
insert_notes_sql = 'insert into snap_v1.notes_to_perfume values (%s,%s)'
insert_types_sql = 'insert into snap_v1.type_to_perfume values (%s,%s)'

update_info_sql = 'update snap_v1.perfume set volume=%s,sex=%s,comment=%s,price=%s where id=%s'

select_note_id_sql = 'select id from snap_v1.notes where LOWER(name) = LOWER(%s)'
select_type_id_sql = 'select id from snap_v1.type where LOWER(name) = LOWER(%s)'
conn = None
try:
    with psycopg2.connect(**config) as conn:
        cur = conn.cursor()
        # Вставка основной инфы
        for name in names:
            cur.execute(insert_name_sql, [name])
            id = cur.fetchone()
            if id:
                ids.append(id[0])
        for i, volume in enumerate(volumes):
            cur.execute(update_info_sql, (volume, sexs[i], comments[i], prices[i], ids[i]))

        # Вставка связей с нотами
        for i, note in enumerate(notes):
            notes_list = note.split(", ")
            for one_note in notes_list:
                cur.execute(select_note_id_sql, [one_note])
                id = cur.fetchone()
                if id:
                    cur.execute(insert_notes_sql, (ids[i], id))
                else:
                    raise Exception(f'What is {one_note}')

        # Вставка связей с типами
        for i, type in enumerate(types):
            if type == 'Экстракт':
                type = 'Экстракт духов'
            types_list = type.split(", ")
            for one_type in types_list:
                cur.execute(select_type_id_sql, [one_type])
                id = cur.fetchone()
                if id:
                    cur.execute(insert_types_sql, (ids[i], id))
                else:
                    raise Exception(f'What is {type}')
        conn.commit()
        cur.close()
except psycopg2.DatabaseError as error:
    if conn:
        conn.rollback()
    print(error)
finally:
    if conn:
        conn.close()
