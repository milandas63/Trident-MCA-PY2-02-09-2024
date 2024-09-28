import module_str as m
import mysql.connector

conn = mysql.connector.connect(
	host = 'localhost',
	user = 'root',
	passwd = 'root',
	database = 'contact_db'
)

tup = ((4,'ID','C'),(30,'CONTACT-NAME','R'),(5,'SEX','C'),(12,'MOBILE','C'),(20,'RELATION','R'),(20,'LOCATION','R'))

curs = conn.cursor()
curs.execute("SELECT c.con_id AS 'ID', c.name AS 'CONTACT-NAME', c.gender AS 'SEX', c.mobile_no1 AS 'MOBILE', r.rel_name AS 'RELATION', l.loc_name AS 'LOCATION' FROM contact AS c LEFT JOIN relation AS r ON c.rel_id=r.rel_id LEFT JOIN location AS l ON c.loc_id=l.loc_id")

print("+",end='')
for i,arr in enumerate(tup):
	print(m.replicate("-",arr[0]),end='+')
print()

print("|",end="")
for i,arr in enumerate(tup):
	print(m.padCenter(arr[1],arr[0]),end='|')
print()

print("+",end='')
for i,arr in enumerate(tup):
	print(m.replicate("-",arr[0]),end='+')
print()

for row in curs:
	print('|',end='')
	for index, col in enumerate(row):
		tup_index = tup[index]
		width = tup_index[0]
		padtype = tup_index[2]
		if padtype=='L':
			print(m.padLeft(col,width), end='|')
		elif padtype=='C':
			print(m.padCenter(col,width), end='|')
		elif padtype=='R':
			print(m.padRight(col,width), end='|')
	print()

print("+",end='')
for i,arr in enumerate(tup):
	print(m.replicate("-",arr[0]),end='+')
print()

conn.close()


"""
+----+------------------------------+-----+------------+--------------------+--------------------+
| ID |         CONTACT-NAME         | SEX |   MOBILE   |      RELATION      |      LOCATION      |
+----+------------------------------+-----+------------+--------------------+--------------------+
| 1  |Gopinath Ojha                 |  M  | 7751847636 |School Friend       |Mayurbhanj          |
| 2  |Abinash Patra                 |  M  | 7848039329 |College Friend      |Konark              |
| 3  |Priyadarshini Mohapatra       |  F  | 8917460932 |School Friend       |Kendrapara          |
| 4  |Harapriya Panda               |  F  | 6372322013 |College Friend      |Bhubaneswar         |
| 5  |Ipsita Nayak                  |  F  | 8144661279 |College Friend      |Bhubaneswar         |
| 6  |Bijay Kumar Behera            |  M  | 7205384824 |College Friend      |Bhubaneswar         |
| 7  |Srikant Behera                |  M  | 7978841760 |College Friend      |Bhubaneswar         |
| 8  |Dibyaranjan Sethi             |  M  | 9114168580 |College Friend      |Bhubaneswar         |
| 9  |Jagan Lenka                   |  M  | 9337849824 |College Friend      |Bhubaneswar         |
+----+------------------------------+-----+------------+--------------------+--------------------+
"""