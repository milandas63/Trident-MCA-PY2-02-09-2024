from tkinter import*
root=Tk()
root.title("combo box")

def display():
    sel_M=select1.get()
    entered_name = ent_text.get()
    
    lbl.config(text=f"Your {sel_M}'s name is: {entered_name}")

select1=StringVar()
select1.set("select")

family=["Father","Mother","Sister","Brother"]
option_f= OptionMenu(root, select1, *family)
option_f.pack()

ent_text = Entry(root, width=20)
ent_text.pack()

btn=Button(root,text="Submit",command=display)
btn.pack()

lbl=Label(root,text="")
lbl.pack()

root.mainloop()
