from tkinter import *
import csv

root=Tk()
root.title("STUDENT FORM")

def save_data():
    name=ent_name.get()
    age=ent_age.get()
    dob=ent_dob.get()
    mob=ent_no.get()
    with open("result.csv",mode="a",newline="") as fb:
        write=csv.writer(fb)
        write.writerows([name,age,dob,mob])

    ent_name.delete(0,END)
    ent_age.delete(0,END)
    ent_dob.delete(0,END)
    ent_no.delete(0,END)


    lable7_res.config(text="Data saved successfully!!!",font=3)    

lable1_caption=Label(root,text="STUDENT REGISTRATION FORM",fg="darkred",font=("arial",15,"underline"))
lable1_caption.grid(row=0,column=0,columnspan=4)

lable_dummy1=Label(root,text="")
lable_dummy1.grid(row=1,column=0,columnspan=3)

lable2_name=Label(root,text="Enter Your Name: ",fg="blue",font=3)
lable2_name.grid(row=2,column=0)

ent_name=Entry(root,width=20)
ent_name.grid(row=2,column=1,columnspan=4)

lable_dummy2=Label(root,text="")
lable_dummy2.grid(row=3,column=0,columnspan=4)

lable3_age=Label(root,text="Enter Your Age: ",fg="blue",font=3)
lable3_age.grid(row=4,column=0)

ent_age=Entry(root,width=20)
ent_age.grid(row=4,column=1,columnspan=4)

lable_dummy3=Label(root,text="")
lable_dummy3.grid(row=5,column=0,columnspan=4)

lable4_dob=Label(root,text="Enter Your D.O.B: ",fg="blue",font=3)
lable4_dob.grid(row=6,column=0)

ent_dob=Entry(root,width=20)
ent_dob.grid(row=6,column=1,columnspan=4)

lable_dummy4=Label(root,text="")
lable_dummy4.grid(row=7,column=0,columnspan=4)

lable5_no=Label(root,text="Enter Your Number: ",fg="blue",font=3)
lable5_no.grid(row=8,column=0)

ent_no=Entry(root,width=20)
ent_no.grid(row=8,column=1,columnspan=4)

lable_dummy5=Label(root,text="")
lable_dummy5.grid(row=9,column=0,columnspan=4)

lable6_btn=Button(root,text="Save",padx=20,fg="white",bg="blue",font=2,command=save_data)
lable6_btn.grid(row=10,column=1)

lable7_res=Label(root,text="")
lable7_res.grid(row=12,column=0,columnspan=4)

root.mainloop()
