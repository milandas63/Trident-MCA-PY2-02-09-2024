from tkinter import *
from PIL import ImageTk, Image

root = Tk()
root.title("Radiobutton demo")
root.iconbitmap("bird.ico")

result = StringVar()
result.set("F")
res = IntVar()
res.set(0)

def gender():
    lbl = Label(root, text=result.get()+" "+str(res.get())).pack()

Radiobutton(root, text="Male", variable=result, value="M").pack()
Radiobutton(root, text="Female", variable=result, value="F").pack()

Radiobutton(root, text="True", variable=res, value=1).pack()
Radiobutton(root, text="False", variable=res, value=0).pack()

btn = Button(root, text="Gender", command=gender)
btn.pack()

root.mainloop()

