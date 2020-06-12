$PBExportHeader$w_demo_sheet3.srw
$PBExportComments$Generated MDI Sheet #3
forward
global type w_demo_sheet3 from w_demo_basesheet
end type
end forward

global type w_demo_sheet3 from w_demo_basesheet
string Tag="Untitled for Sheet 3"
end type
global w_demo_sheet3 w_demo_sheet3

on w_demo_sheet3.create
call super::create
end on

on w_demo_sheet3.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
end on

