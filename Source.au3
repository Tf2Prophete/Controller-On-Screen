#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Imgs\Icon.ico
#AutoIt3Wrapper_Compression=0
#AutoIt3Wrapper_Res_Fileversion=1.3.0.0
#AutoIt3Wrapper_Res_LegalCopyright=R.S.S.
#AutoIt3Wrapper_Res_requestedExecutionLevel=asInvoker
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
; *** Start added by AutoIt3Wrapper ***
#include <TrayConstants.au3>
; *** End added by AutoIt3Wrapper ***

#include <GUIConstantsEx.au3>
#include <Array.au3>
#include <ButtonConstants.au3>
#include <Constants.au3>
#include "GUICtrlPic.au3"
#include <StaticConstants.au3>
#include <Misc.au3>

Opt("GUIOnEventMode", 1)
Opt("TrayOnEventMode", 1)
Opt("TrayMenuMode", 1)


Global $joy, $coor, $MouseAction

$joy = _JoyInit()

GuiCreate("Controller", 550, 350)
GUISetOnEvent($GUI_EVENT_CLOSE, "_Exit")

$Pic1 = @ScriptDir & "/Imgs/ControllerBlank.png"
$Pic2 = @ScriptDir & "/Imgs/ControllerDPadUp.png"
$Pic3 = @ScriptDir & "/Imgs/ControllerDPadLeft.png"
$Pic4 = @ScriptDir & "/Imgs/ControllerDPadRight.png"
$Pic5 = @ScriptDir & "/Imgs/ControllerDPadDown.png"
$Pic6 = @ScriptDir & "/Imgs/ControllerLAUp.png"
$Pic7 = @ScriptDir & "/Imgs/ControllerLALeft.png"
$Pic8 = @ScriptDir & "/Imgs/ControllerLARight.png"
$Pic9 = @ScriptDir & "/Imgs/ControllerLADown.png"
$Pic10 = @ScriptDir & "/Imgs/ControllerRAUp.png"
$Pic11 = @ScriptDir & "/Imgs/ControllerRALeft.png"
$Pic12 = @ScriptDir & "/Imgs/ControllerRARight.png"
$Pic13 = @ScriptDir & "/Imgs/ControllerRADown.png"
$Pic14 = @ScriptDir & "/Imgs/ControllerTriangle.png"
$Pic15 = @ScriptDir & "/Imgs/ControllerCircle.png"
$Pic16 = @ScriptDir & "/Imgs/ControllerX.png"
$Pic17 = @ScriptDir & "/Imgs/ControllerSquare.png"
$Pic18 = @ScriptDir & "/Imgs/ControllerR1.png"
$Pic19 = @ScriptDir & "/Imgs/ControllerR2.png"
$Pic20 = @ScriptDir & "/Imgs/ControllerL1.png"
$Pic21 = @ScriptDir & "/Imgs/ControllerL2.png"
$Pic22 = @ScriptDir & "/Imgs/ControllerSelect.png"
$Pic23 = @ScriptDir & "/Imgs/ControllerStart.png"

$Pic = GUICtrlCreatePic(@ScriptDir & "/Imgs/ControllerBlank.png", 0, 0, 500, 300)
GuiCtrlSetState(-1,$GUI_DISABLE)
$a1 = _GUICtrlPic_Create($Pic1 , 25, 25, 500, 300, BitOR($SS_CENTERIMAGE,$SS_SUNKEN, $SS_NOTIFY), Default)



GuiSetState()

Func _Exit()
	Exit
EndFunc




While 1

	$coord = _GetJoy($joy, 0)
;~ 	MsgBox(0, "Test", $coord[0] & @CRLF & $coord[1] & @CRLF & $coord[3] & @CRLF & $coord[4] & @CRLF & $coord[5] & @CRLF & $coord[6] & @CRLF & $coord[7])
	If $coord[0] < 32767 OR $coord[0] > 32767 OR $coord[1] < 32767 OR $coord[1] > 32767  OR $coord[2] < 32767 OR $coord[2] > 32767 OR $coord[3] < 32767 OR $coord[3] > 32767 OR $coord[4] > 0 OR $coord[5] > 0 OR $coord[6] < 65535 OR $coord[7] > 0 Then
			If $coord[7] = 256 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic22)
		Sleep(275)
			ElseIf $coord[7] = 512 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic23)
		Sleep(275)
			ElseIf $coord[7] = 1 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic14)
		Sleep(275)
			ElseIf $coord[7] = 2 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic15)
		Sleep(275)
			ElseIf $coord[7] = 4 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic16)
		Sleep(275)
			ElseIf $coord[7] = 8 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic17)
		Sleep(275)
			ElseIf $coord[7] = 16 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic20)
		Sleep(275)
			ElseIf $coord[7] = 64 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic21)
		Sleep(275)
			ElseIf $coord[7] = 32 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic18)
		Sleep(275)
			ElseIf $coord[7] = 128 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic19)
		Sleep(275)
			ElseIf $coord[6] = 27000 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic3)
		Sleep(275)
			ElseIf $coord[6] = 0 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic2)
		Sleep(275)
			ElseIf $coord[6] = 9000 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic4)
		Sleep(275)
			ElseIf $coord[6] = 18000 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic5)
		Sleep(275)
			ElseIf $coord[1] = 0 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic6)
		Sleep(275)
			ElseIf $coord[0] > 50000 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic8)
		Sleep(275)
			ElseIf $coord[1] = 65535 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic9)
		Sleep(275)
			ElseIf $coord[0] = 0 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic7)
		Sleep(275)
			ElseIf $coord[3] = 0 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic10)
		Sleep(275)
			ElseIf $coord[2] = 65535 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic12)
		Sleep(275)
			ElseIf $coord[3] = 65535 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic13)
		Sleep(275)
			ElseIf $coord[2] = 0 Then
		$MouseAction = 1
		_GuiCtrlPic_SetImage($a1, $Pic11)
		Sleep(275)
		EndIf
	EndIf

			If $MouseAction = 1 Then
			$MouseAction = 0
		_GuiCtrlPic_SetImage($a1, $Pic1)
		EndIf
WEnd

$lpJoy = 0 ; Joyclose


;======================================
;   _JoyInit()
;======================================
Func _JoyInit()
	Local $joy
	Global $JOYINFOEX_struct = "dword[13]"
	$joy = DllStructCreate($JOYINFOEX_struct)
	If @error Then Return 0
	DllStructSetData($joy, 1, DllStructGetSize($joy), 1);dwSize = sizeof(struct)
	DllStructSetData($joy, 1, 255, 2) ;dwFlags = GetAll
	Return $joy
EndFunc   ;==>_JoyInit

Func _GetJoy($lpJoy, $iJoy)
	Local $coor, $ret
	Dim $coor[8]
	DllCall("Winmm.dll", "int", "joyGetPosEx", _
			"int", $iJoy, _
			"ptr", DllStructGetPtr($lpJoy))
	If Not @error Then
		$coor[0] = DllStructGetData($lpJoy, 1, 3)
		$coor[1] = DllStructGetData($lpJoy, 1, 4)
		$coor[2] = DllStructGetData($lpJoy, 1, 5)
		$coor[3] = DllStructGetData($lpJoy, 1, 6)
		$coor[4] = DllStructGetData($lpJoy, 1, 7)
		$coor[5] = DllStructGetData($lpJoy, 1, 8)
		$coor[6] = DllStructGetData($lpJoy, 1, 11)
		$coor[7] = DllStructGetData($lpJoy, 1, 9)
	EndIf
	Return $coor
EndFunc   ;==>_GetJoy