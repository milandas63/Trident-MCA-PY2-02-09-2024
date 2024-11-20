import mysql.connector as msq
from tabulate import tabulate

con=msq.connect(host='localhost',username='dibya',password='p-0440',database='mysqldatabase')
c=con.cursor()

c.execute("""
        select student.roll_no, student.std_name,class.class_desc, student.sec_id,vaccination.vaccination_desc
        from student
        left join class on student.class_id=class.class_id
        left join vaccination on student.vaccination_id=vaccination.vaccination_id
         """)

data=c.fetchall()
Display=['Roll_No','St Name','Cls Desc','Sec Id','vaccination_Desc']

print(tabulate(data,headers=Display,tablefmt='pretty'))
con.close()
