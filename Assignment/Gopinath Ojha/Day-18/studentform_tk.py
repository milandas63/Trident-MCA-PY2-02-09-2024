from tkinter import *
import csv

def savedata():
    name=entname.get()
    age=entage.get()
    dob=entdob.get()
    mob=entmob.get()

    with open('people.csv',mode='a',newline='') as file:
        writer=csv.writer(file)
        writer.writerow([name,age,dob,mob])

    entname.delete(0, END)
    entage.delete(0, END)
    entdob.delete(0, END)
    entmob.delete(0, END)

    lbl11.config(text="Data saved successfully!")

root=Tk()
root.title("Student form")


lbl1 = Label(root, text="Student Information",font=10)
lbl1.grid(row=0,column=0,columnspan=10)

lbl3=Label(root,text="Enter your Name: ")
lbl3.grid(row=2,column=0,columnspan=1,sticky="W")

entname=Entry(root,width=50)
entname.grid(row=2,column=1,columnspan=5)

lbl4=Label(root,text="")
lbl4.grid(row=4,column=0,columnspan=5)

lbl5=Label(root,text="Enter your Age: ")
lbl5.grid(row=5,column=0,columnspan=1,sticky="W")

entage=Entry(root,width=50)
entage.grid(row=5,column=1,columnspan=5)

lbl6=Label(root,text="")
lbl6.grid(row=7,column=0,columnspan=5)

lbl7=Label(root,text="Enter your DOB: ")
lbl7.grid(row=8,column=0,columnspan=1,sticky="W")

entdob=Entry(root,width=50)
entdob.grid(row=8,column=1,columnspan=5)

lbl8=Label(root,text="")
lbl8.grid(row=10,column=0,columnspan=5)

lbl9=Label(root,text="Enter your Number: ")
lbl9.grid(row=11,column=0,columnspan=1,sticky="W")

entmob=Entry(root,width=50)
entmob.grid(row=11,column=1,columnspan=5)

lbl10=Label(root,text="")
lbl10.grid(row=12,column=0,columnspan=5)

btnsub=Button(root,text="save",width=10,bg="LightGray",cursor="hand2",command=savedata)
btnsub.grid(row=13,column=0,columnspan=6)

lbl11=Label(root,text="")
lbl11.grid(row=14,column=0,columnspan=6)


root.mainloop()
