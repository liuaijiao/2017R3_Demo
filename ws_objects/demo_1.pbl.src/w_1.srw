$PBExportHeader$w_1.srw
forward
global type w_1 from window
end type
type cb_2 from commandbutton within w_1
end type
end forward

global type w_1 from window
integer width = 3959
integer height = 1648
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
end type
global w_1 w_1

on w_1.create
this.cb_2=create cb_2
this.Control[]={this.cb_2}
end on

on w_1.destroy
destroy(this.cb_2)
end on

type cb_2 from commandbutton within w_1
integer x = 105
integer y = 12
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

