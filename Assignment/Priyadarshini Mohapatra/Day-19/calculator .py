#write  aprogram to make a functional calculator:
from tkinter import *
root=Tk()
root.title("CALCULATOR")
root.configure(bg="yellow")
root.geometry("500x500")
var1=0
var2=0
result=IntVar()


lable1_caption = Label(root, text="CALCULATOR", fg="blue", font=("arial", 12, "underline", "bold"))
lable1_caption.grid(row=0, column=0, columnspan=6)

lable2_text = Label(root, text=" ")
lable2_text.grid(row=1, column=0, sticky="W")

ent_text = Entry(root, width=60)
ent_text.grid(row=1, column=1, columnspan=6)

lable_dummy2 = Label(root, text="", bg="yellow")
lable_dummy2.grid(row=3, column=0, columnspan=6)
    
def Cool_data(num):
    previous= ent_text.get()
    ent_text.insert(len(previous),num)
    
def Plus():
    global var1
    var1 = int(ent_text.get())
    ent_text.delete(0, END)
    ent_text.insert(0, "+") 
    return

def Clear():
    ent_text.delete(0,END)
    global var1,var2
    var1 = 0
    var2 = 0
    return
    

def Equal():
    global var1,var2
    var2=int(ent_text.get())
    ent_text.delete(0,END)
    result=var1 + var2
    #ent_text.delete(0,END)
    ent_text.insert(0,result)
    return

lable3_btn = Button(root, text="7",padx="5", fg="white",bg="blue",width="10" ,command=lambda:Cool_data(7))
lable3_btn.grid(row=4, column=1)

lable4_btn = Button(root, text="8",padx="5", fg="white", bg="blue",width="10",command=lambda:Cool_data(8))
lable4_btn.grid(row=4, column=2)

lable5_btn = Button(root, text="9",padx="5", fg="white",bg="blue",width="10" ,command=lambda:Cool_data(9))
lable5_btn.grid(row=4, column=3)

lable_dummy3 = Label(root, text="", bg="yellow")
lable_dummy3.grid(row=5, column=0)

lable6_btn = Button(root, text="4", padx="5",fg="white",bg="blue",width="10", command=lambda:Cool_data(4))
lable6_btn.grid(row=6, column=1)

lable7_btn = Button(root, text="5",padx="5", fg="white",bg="blue",width="10", command=lambda:Cool_data(5))
lable7_btn.grid(row=6, column=2)

lable8_btn = Button(root, text="6", padx="5",fg="white",bg="blue",width="10", command=lambda:Cool_data(6))
lable8_btn.grid(row=6, column=3)

lable_dummy4 = Label(root, text="", bg="yellow")
lable_dummy4.grid(row=7, column=0)

lable9_btn = Button(root, text="1", padx="5",fg="white",bg="blue",width="10", command=lambda:Cool_data(1))
lable9_btn.grid(row=8, column=1)

lable10_btn = Button(root, text="2",padx="5", fg="white",bg="blue",width="10", command=lambda:Cool_data(2))
lable10_btn.grid(row=8, column=2)

lable11_btn = Button(root, text="3",padx="5", fg="white",bg="blue",width="10", command=lambda:Cool_data(3))
lable11_btn.grid(row=8, column=3)

lable_dummy5 = Label(root, text="", bg="yellow")
lable_dummy5.grid(row=9, column=0)

lable12_btn = Button(root, text="0",padx="5", fg="white",bg="blue",width="10", command=lambda:Cool_data(0))
lable12_btn.grid(row=10, column=1)

lable13_btn = Button(root, text="+",padx="5", fg="white",bg="blue",width="27", command=Plus)
lable13_btn.grid(row=10, column=2,columnspan=2)

lable_dummy5 = Label(root, text="", bg="yellow")
lable_dummy5.grid(row=11, column=0)

lable12_btn = Button(root, text="C",padx="5", fg="white",bg="blue",width="10", command=Clear)
lable12_btn.grid(row=12, column=1)

lable13_btn = Button(root, text="=",padx="5", fg="white",bg="blue",width="27", command=Equal)
lable13_btn.grid(row=12, column=2,columnspan=2)

root.mainloop()