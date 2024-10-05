from tkinter import *
from PIL import ImageTk, Image

root = Tk()
root.title("Combobox demo")
root.iconbitmap("bird.ico")

def submit():
    print(select1.get()+" / "+select2.get())

select1 = StringVar()
select1.set("January")

select2 = StringVar()
select2.set("Monday")
weekday = ("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")

option1 = OptionMenu(root, select1, "January","February","March","April","May","June","July","August","September","October","November","December")
option1.pack()
option2 = OptionMenu(root, select2, *weekday)
option2.pack()

btn_submit = Button(root, text="Submit", command=submit)
btn_submit.pack()

root.mainloop()

