from tkinter import *

root = Tk()
root.title("Option")

def submit():
    print("Your "+select.get()+" name is "+name.get())

select = StringVar()
select.set("Father")


relation =["father","brother","Mother","sister"]
option = OptionMenu(root,select ,"father","brother","mother","sister").pack()

lbl =Label(root,text="Name: ")
lbl.pack()

name = Entry(root,width="20")
name.pack()

btn = Button(root,text="Submit",command=submit).pack()

root.mainloop()
