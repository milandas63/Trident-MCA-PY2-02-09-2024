from tkinter import *

root = Tk()
root.title("Checkbutton demo")

def Show():
    res = state.get()
    print(res)

state = StringVar()
gender = Checkbutton(root, text="Gender", variable=state, onvalue="Male", offvalue="Female", state="active")
gender.pack()

submit = Button(root, text="Submit", command=Show)
submit.pack()

root.mainloop()
