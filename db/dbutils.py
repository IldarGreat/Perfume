import psycopg2
from itertools import groupby
from config import load_config
from entity.Perfume import Perfume


def fetch_outer_data_from_perfume_id(perfume_id, mark='notes'):
    config = load_config()
    rows = []
    fetch_notes = """
         SELECT n.name FROM snap_v1.notes n
         JOIN snap_v1.notes_to_perfume ntp on ntp.note_id = n.id
         JOIN snap_v1.perfume p on p.id = ntp.perfume_id
         WHERE p.id = %s
         """
    fetch_types = """
         SELECT t.name FROM snap_v1.type t
         JOIN snap_v1.type_to_perfume ttp on ttp.type_id = t.id
         JOIN snap_v1.perfume p on p.id = ttp.perfume_id
         WHERE p.id = %s
         """
    if mark == 'notes':
        sql_fetch_data = fetch_notes
    else:
        sql_fetch_data = fetch_types
    try:
        with psycopg2.connect(**config) as conn:
            with conn.cursor() as cur:
                cur.execute(sql_fetch_data, [perfume_id])
                row = cur.fetchone()
                while row is not None:
                    rows.append(row)
                    row = cur.fetchone()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    return rows


def get_from_perfume(notes, price_low, price_high, type):
    config = load_config()
    rows = []
    fetch_perfume = """
    SELECT * FROM snap_v1.perfume p
    JOIN snap_v1.notes_to_perfume ntp on p.id = ntp.perfume_id
    JOIN snap_v1.notes n on n.id = ntp.note_id
    JOIN snap_v1.type_to_perfume ttp on ttp.perfume_id = p.id
    JOIN snap_v1.type t on t.id = ttp.type_id
    WHERE n.name in (%s) AND (p.price BETWEEN %s AND %s) AND t.name in (%s)
    """
    try:
        with psycopg2.connect(**config) as conn:
            with conn.cursor() as cur:
                cur.execute(fetch_perfume, (notes, price_low, price_high,
                                            type))
                row = cur.fetchone()
                while row is not None:
                    perfume = Perfume()
                    perfume.fill_base(row)
                    perfume.notes = fetch_outer_data_from_perfume_id(perfume.id, 'notes')
                    perfume.types = fetch_outer_data_from_perfume_id(perfume.id, 'types')
                    rows.append(perfume)
                    row = cur.fetchone()
        grouped_parfumes = []
        for key, group in groupby(sorted(rows, key=lambda x: x.name), lambda x: x.name):
            str_price = ''
            str_volume = ''
            base_item = None
            for item in group:
                str_volume += str(round(item.volume)) + "/"
                str_price += str(round(item.price)) + "/"
                base_item = item
            str_volume = str_volume[:-1]
            str_price = str_price[:-1]
            perfume = Perfume()
            perfume.fill_from_perfume(base_item)
            perfume.price_str = str_price
            perfume.volume_str = str_volume
            grouped_parfumes.append(perfume)
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    return grouped_parfumes


def get_all_data_types(data='type'):
    config = load_config()
    rows = []
    fetch_data_sql = ''
    if data == 'type':
        fetch_data_sql = """
        SELECT t.name FROM snap_v1.type t
        """
    elif data == 'notes':
        fetch_data_sql = """
                SELECT n.name FROM snap_v1.notes n
                """
    elif data == 'price':
        fetch_data_sql = """
                SELECT p.price_low, p.price_high FROM snap_v1.price_range p
                """
    try:
        with psycopg2.connect(**config) as conn:
            with conn.cursor() as cur:
                cur.execute(fetch_data_sql)
                row = cur.fetchone()
                while row is not None:
                    if data != 'price':
                        rows.append(row[0])
                    else:
                        rows.append(row)
                    row = cur.fetchone()

    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    return rows


if __name__ == '__main__':
    print(get_all_data_types('price'))
