$PBExportHeader$demo.sra
$PBExportComments$Generated MDI Application Object
forward
global type demo from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type demo from application
string appname = "demo"
end type
global demo demo

on demo.create
appname = "demo"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on demo.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

event open;//*-----------------------------------------------------------------*/
//*    open:  Application Open Script:
//*            1) Instantiate a connection object
//*            2) Populate SQLCA and Connect to the database
//*            3) Open frame window
//*-----------------------------------------------------------------*/
n_demo_connectservice lnv_connectserv

/*  This prevents double toolbar  */
this.ToolBarFrameTitle = "MDI Application Toolbar"
this.ToolBarSheetTitle = "MDI Application Toolbar"

lnv_connectserv = Create using "n_demo_connectservice"

If lnv_connectserv.of_ConnectDB ( ) = 0 Then
	/*  Open MDI frame window  */
	Open ( w_demo_frame )
End if

Destroy lnv_connectserv
end event

event close;//*-----------------------------------------------------------------*/
//*    close:  Application Close Script:
//*            1) Instantiate a connection object
//*            2) Disconnect from the database
//*-----------------------------------------------------------------*/
n_demo_connectservice lnv_connectserv

lnv_connectserv = Create using "n_demo_connectservice"

lnv_connectserv.of_DisconnectDB ( )

Destroy lnv_connectserv
end event

