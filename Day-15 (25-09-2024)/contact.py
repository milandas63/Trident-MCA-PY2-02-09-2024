import mysql.connector

conn = mysql.connector.connect(
	host = 'localhost',
	user = 'root',
	passwd = 'root',
	database = 'contact_db'
)

curs = conn.cursor()
curs.execute("SELECT c.con_id AS 'ID', c.name AS 'CONTACT-NAME', c.gender AS 'SEX', c.mobile_no1 AS 'MOBILE', r.rel_name AS 'RELATION', l.loc_name AS 'LOCATION' FROM contact AS c LEFT JOIN relation AS r ON c.rel_id=r.rel_id LEFT JOIN location AS l ON c.loc_id=l.loc_id")

for row in curs:
	for col in row:
		print(col, end='  ')
	print()
