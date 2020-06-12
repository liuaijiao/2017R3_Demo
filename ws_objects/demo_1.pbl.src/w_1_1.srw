$PBExportHeader$w_1_1.srw
forward
global type w_1_1 from w_1
end type
type cb_2 from commandbutton within w_1_1
end type
end forward

global type w_1_1 from w_1
cb_2 cb_2
end type
global w_1_1 w_1_1

on w_1_1.create
int iCurrent
call super::create
this.cb_2=create cb_2
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_2
end on

on w_1_1.destroy
call super::destroy
destroy(this.cb_2)
end on

type cb_1 from w_1`cb_1 within w_1_1
integer x = 78
integer y = 48
end type

type cb_2 from commandbutton within w_1_1
integer x = 78
integer y = 232
integer width = 402
integer height = 112
integer taborder = 20
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

