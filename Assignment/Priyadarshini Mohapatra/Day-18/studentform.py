from tkinter import *
import csv

root = Tk()
root.title("STUDENT FORM")
root.configure(bg="yellow")

def Save_data():
    name = ent_name.get()
    age = ent_age.get()
    dob = ent_dob.get()
    mob = ent_no.get()
    course = ent_course.get()
    email = ent_email.get()
    link = ent_link.get()
    
    
    with open("show.csv", mode="a", newline="") as op:
        writer = csv.writer(op)
    
        writer.writerow([name, age, dob, mob, course, email, link])

    
    ent_name.delete(0, END)
    ent_age.delete(0, END)
    ent_dob.delete(0, END)
    ent_no.delete(0, END)
    ent_course.delete(0, END)
    ent_email.delete(0, END)
    ent_link.delete(0, END)

    
    lable10_res.config(text="Data successfully saved....!!!", font=2)


lable1_caption = Label(root, text="STUDENT DATA FORM", fg="blue", font=("arial", 12, "underline", "bold"))
lable1_caption.grid(row=0, column=0, columnspan=6)

lable_dummy1 = Label(root, text="", bg="yellow")
lable_dummy1.grid(row=1, column=0, columnspan=6)

lable2_name = Label(root, text="Enter Your Name:", fg="blue")
lable2_name.grid(row=2, column=0, sticky="W")

ent_name = Entry(root, width=50)
ent_name.grid(row=2, column=1, columnspan=6)

lable_dummy2 = Label(root, text="", bg="yellow")
lable_dummy2.grid(row=3, column=0, columnspan=6)

lable3_age = Label(root, text="Enter Your Age: ", fg="blue")
lable3_age.grid(row=4, column=0, sticky="W")

ent_age = Entry(root, width=50)
ent_age.grid(row=4, column=1, columnspan=6)

lable_dummy3 = Label(root, text="", bg="yellow")
lable_dummy3.grid(row=5, column=0, columnspan=6)

lable4_dob = Label(root, text="Enter Your D.O.B: ", fg="blue")
lable4_dob.grid(row=6, column=0, sticky="W")

ent_dob = Entry(root, width=50)
ent_dob.grid(row=6, column=1, columnspan=6)

lable_dummy4 = Label(root, text="", bg="yellow")
lable_dummy4.grid(row=7, column=0, columnspan=6)

lable5_no = Label(root, text="Enter Your Number: ", fg="blue")
lable5_no.grid(row=8, column=0, sticky="W")

ent_no = Entry(root, width=50)
ent_no.grid(row=8, column=1, columnspan=6)

lable_dummy5 = Label(root, text="", bg="yellow")
lable_dummy5.grid(row=9, column=0, columnspan=6)

lable6_course = Label(root, text="Enter Your Course: ", fg="blue")
lable6_course.grid(row=10, column=0, sticky="W")

ent_course = Entry(root, width=50)
ent_course.grid(row=10, column=1, columnspan=6)

lable_dummy6 = Label(root, text="", bg="yellow")
lable_dummy6.grid(row=11, column=0, columnspan=6)

lable7_email = Label(root, text="Enter Your Email: ", fg="blue")
lable7_email.grid(row=12, column=0, sticky="W")

ent_email = Entry(root, width=50)
ent_email.grid(row=12, column=1, columnspan=6)

lable_dummy7 = Label(root, text="", bg="yellow")
lable_dummy7.grid(row=13, column=0, columnspan=6)

lable8_link = Label(root, text="Enter Your Link: ", fg="blue")
lable8_link.grid(row=14, column=0, sticky="W")

ent_link = Entry(root, width=50)
ent_link.grid(row=14, column=1, columnspan=6)

lable_dummy8 = Label(root, text="", bg="yellow")
lable_dummy8.grid(row=15, column=0, columnspan=6)

lable9_btn = Button(root, text="Save", padx=20, fg="white", bg="blue", command=Save_data)
lable9_btn.grid(row=16, column=0, columnspan=7)

lable_dummy9 = Label(root, text="", bg="yellow")
lable_dummy9.grid(row=17, column=0, columnspan=7)

lable10_res = Label(root, text="", bg="yellow")
lable10_res.grid(row=18, column=0, columnspan=7)

root.mainloop()

