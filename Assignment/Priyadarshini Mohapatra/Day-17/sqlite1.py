import sqlite3
con=sqlite3.connect("contact_db")
cur=con.cursor()
cur.execute(""" CREATE TABLE IF NOT EXISTS student
           (ID INTEGER PRIMARY KEY,
            NAME TEXT,
            AGE INTEGER,
            ROLL INTEGER)""")
cur.execute("INSERT INTO student (name, age,roll) VALUES ('Priya', 20,52)")
cur.execute("INSERT INTO student (name, age,roll) VALUES ('Ipsita', 21,68)")
cur.execute("INSERT INTO student (name, age,roll) VALUES ('Swati', 22,65)")
con.commit()
cur.execute("select * from student")
rows=cur.fetchall()
for row in rows:
    print(row)
con.close()