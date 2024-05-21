import psycopg2

from config import load_config


def clean_comment(comment):
    comment = comment.replace("\n", "")
    comment = comment.replace(";", ":")
    comment = comment.replace(".", "")
    comment = comment.replace("верхние", "Верхние")
    comment = comment.replace("средние", "Средние")
    comment = comment.replace("базовые", "Базовые")
    return comment

ids = []
clear_comments = []
config = load_config()
select_comments_sql = 'select id, comment from snap_v1.perfume'
update_comments_sql = 'update snap_v1.perfume set comment=%s where id=%s'
conn = None
try:
    with psycopg2.connect(**config) as conn:
        cur = conn.cursor()
        cur.execute(select_comments_sql)
        row = cur.fetchone()
        while row is not None:
            id = row[0]
            comment = row[1]
            clear_comment = clean_comment(comment)
            ids.append(id)
            clear_comments.append(clear_comment)
            row = cur.fetchone()

        for i, clear_comment in enumerate(clear_comments):
            cur.execute(update_comments_sql, (clear_comment, ids[i]))
        conn.commit()
        cur.close()
except psycopg2.DatabaseError as error:
    if conn:
        conn.rollback()
    print(error)
finally:
    if conn:
        conn.close()
