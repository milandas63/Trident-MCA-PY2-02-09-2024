import sqlite3

conn = sqlite3.connect('connect_db3')

cur = conn.cursor()
cur.execute("""
	CREATE TABLE addressbook(
		first_name  text,
		last_name   text,
		address     text,
		location    text,
		email_id    text,
		mobile_no   integer
	)
""")

conn.commit()
conn.close()
