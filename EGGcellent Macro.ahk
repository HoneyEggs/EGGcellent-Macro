; Settings (DONT TOUCH)
#NoEnv
#Warn
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#Include %A_ScriptDir%
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1

; Gui Settings
Gui, Add, Tab3, x-1 y-3,  General| Spin|Level|Credits
Gui, Tab, 1
Gui, Add, Checkbox, x10 y30 vTop gSubmit checked, Always On Top
Gui, Add, Text, x10 y60 gSubmit, Preform Selected Actions On The:
Gui, Add, Radio, checked Group x10 y80 vSpin, Spin Tab
Gui, Add, Radio, x10 y100 vLevel, Level Tab
Gui, Add, Text, x5 y285 vInfo gSubmit, F1: Start | F2: Pause/Play | F3: Stop/Reload
Gui, Tab, 2
Gui, Add, Text, x10 y30 vSpinWTD gSubmit, What To Do:
Gui, Add, Radio, x10 y50 Group checked vGrind gSubmit, Grind Spins
Gui, Add, Radio, x90 y50 vSpinS gSubmit, Spin
Gui, Add, Text, x0 y65 vSep2 gSubmit, ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Gui, Add, Text, x3 y75, Stop At/Spin Until:
Gui, Add, Checkbox, x10 y100 vArmament gSubmit, Armament
Gui, Add, Checkbox, x90 y100 vPlasma gSubmit, Plasma
Gui, Add, Checkbox, x160 y100 vRadiation gSubmit, Radiation
Gui, Add, Checkbox, x240 y100 vChaos gSubmit, Chaos
Gui, Add, Checkbox, x310 y100 vSound gSubmit, Sound
Gui, Add, Checkbox, x380 y100 vLava gSubmit, Lava
Gui, Add, Checkbox, x440 y100 vMechanization gSubmit, Mechanization
Gui, Add, Checkbox, x10 y140 vPrism gSubmit, Prism
Gui, Add, Checkbox, x70 y140 vIllusion gSubmit, Illusion
Gui, Add, Checkbox, x140 y140 vLunar gSubmit, Lunar
Gui, Add, Checkbox, x200 y140 vHydra gSubmit, Hydra
Gui, Add, Checkbox, x260 y140 vCosmic gSubmit, Cosmic
Gui, Add, Checkbox, x330 y140 vPhoenix gSubmit, Phoenix
Gui, Add, Checkbox, x400 y140 vSolar gSubmit, Solar
Gui, Add, Checkbox, x10 y180 vAcceleration gSubmit, Acceleration
Gui, Add, Checkbox, x100 y180 vDestruction gSubmit, Destruction
Gui, Add, Checkbox, x190 y180 vNecromancer gSubmit, Necromancer
Gui, Add, Checkbox, x290 y180 vTelekinesis gSubmit, Telekinesis
Gui, Add, Checkbox, x380 y180 vTime gSubmit, Time
Gui, Add, Checkbox, x440 y180 vArcOfTheElements gSubmit, Arc of the Elements
Gui, Add, Checkbox, x570 y180 vHeavensWrath gSubmit, Heaven's Wrath
Gui, Add, Checkbox, x680 y180 vDragon gSubmit, Dragon
Gui, Add, Text, x0 y195 vSep3 gSubmit, ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Gui, Add, Text, x3 y205 gSubmit, Modifications:
Gui, Add, Text, x5 y230 gSubmit, Grinding Element:
Gui, Add, DDL, x90 y227 vGEle  AltSubmit gSubmit, Snow|Firework|Dullahan|Krampus|Non-Event Element
Gui, Add, Checkbox, x220 y230 checked vRejoin gSubmit, Rejoin Game After 1 Hour (Grind Spins)
Gui, Add, Checkbox, x220 y250 checked vGrindIfNoSpin gSubmit, Grind Spins If Spins Run Out (Spin)
Gui, Add, Text, x5 y285 vInfo2 gSubmit, F1: Start | F2: Pause/Play | F3: Stop/Reload
Gui, Tab, 3
Gui, Add, Text,,Nothing here yet.
Gui, Add, Text, x5 y285 vInfo3 gSubmit, F1: Start | F2: Pause/Play | F3: Stop/Reload
Gui, Tab, 4
Gui, Add, Text,,Creator:
Gui, Add, Text, y40, HoneyEggs#0536
Gui, Add, Text, y70, Special Shoutouts:
Gui, Add, Text, y90, Abyssrian#4499 - Posted my GitHub to spread the word :D
Gui, Add, Text, y120, Feedback and Suggestions:
Gui, Add, Text, y140, Mcwad#9491
Gui, Add, Text, y160, Realism#9231
Gui, Add, Text, y180, SHIRO#2833
Gui, Add, Text, y200, tims#6704
Gui, Add, Text, y220, Subzero#1448
Gui, Add, Text, x5 y285 vInfo4 gSubmit, F1: Start | F2: Pause/Play | F3: Stop/Reload
Gui, Show, w750 h300 x725 y200, EGGcellent Macro v1.7

; AlwaysOnTop
Submit:
Gui, Submit, Nohide
if(Top==1)
	gui, +AlwaysOnTop
else
	gui, -AlwaysOnTop
return

F1::
Gui, Minimize
scriptstart:
;Spin Tab
if (Spin==1)
{
if (Grind==1)
{
if (Rejoin==1)
{
SetTimer, rejoin, 3600000
}
}
start:
if (Grind==1)
  {
#include %A_ScriptDir%\Scripts\Grind.ahk
  }
#include %A_ScriptDir%\Scripts\Spin.ahk
z:
if (GrindIfNoSpin==1)
  {
#include %A_ScriptDir%\Scripts\SGrind.ahk
  }
}
rejoin:
Send, {Escape}
Sleep, 100
Send, {l}
Sleep, 100
Send, {Enter}
Sleep, 7000
Click, 192, 407 Left, 10
Sleep, 2000
Click, 460, 540 Left, 10
Sleep, 5000
return

rejoin2:
Send, {Escape}
Sleep, 100
Send, {l}
Sleep, 100
Send, {Enter}
Sleep, 7000
Click, 192, 407 Left, 10
Sleep, 2000
Click, 460, 540 Left, 10
Sleep, 5000
return
}
Return

GuiClose:
ExitApp

F3::
Reload
Sleep, 10000
return

F2::Pause
