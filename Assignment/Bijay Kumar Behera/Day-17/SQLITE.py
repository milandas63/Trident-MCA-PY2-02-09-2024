import sqlite3

con=sqlite3.connect("mydatabase_db")

cur=con.cursor()

cur.execute(""" CREATE TABLE IF NOT EXISTS student
            (ID INTEGER PRIMARY KEY,NAME TEXT,AGE INTEGER)""")

cur.execute("INSERT INTO student (name, age) VALUES ('Bijay', 22)")
cur.execute("INSERT INTO student (name, age) VALUES ('Sanjay', 18)")
con.commit()

cur.execute("select * from student")

rows=cur.fetchall()

for row in rows:
    print(row)


con.close()
