from tkinter import *

root = Tk()
root.title("Frames")

topFrame = Frame(root)
topFrame.pack(side=TOP)

botFrame = Frame(root)
botFrame.pack(side=BOTTOM)

btn1 = Button(topFrame, text="Australia", fg="red")
btn1.pack(side=LEFT)
btn2 = Button(topFrame, text="America", fg="green")
btn2.pack(side=LEFT)
btn3 = Button(topFrame, text="Argentina", fg="blue")
btn3.pack(side=LEFT)

btn10 = Button(botFrame, text="Brazil", fg="black")
btn10.pack(side=BOTTOM)
btn11 = Button(botFrame, text="Brisban", fg="yellow")
btn11.pack(side=BOTTOM)
btn12 = Button(botFrame, text="Bangladesh", fg="cyan")
btn12.pack(side=BOTTOM)

root.mainloop()

