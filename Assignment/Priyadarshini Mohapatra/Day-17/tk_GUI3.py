from tkinter import *
from PIL import  ImageTk , Image
def add():
    lbl2 = Label(root, text="priya")
    lbl2.pack()
    
root = Tk()
root.title("Trident Academy of Creative Technology")
root.iconbitmap("tkinter/icon.ico")
root.geometry("500x500")

lbl1 = Label(root, text='Hello World')
lbl1.pack()

add_label= Button(root, text="Add Label", command=add)
add_label.pack()


root.mainloop()