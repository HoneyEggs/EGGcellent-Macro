; EGGcellent Macro v2
; Made by HoneyEggs
; Made for people who can't make a macro, can't make a good macro, or are to lazy to make a good macro. (Enjoy! :D)
;
;######################################################################################################################################################################################################
; SETTINGS (I highly discourage touching this.)
;######################################################################################################################################################################################################
;
#Requires AutoHotkey v1.1.36.01+
#NoEnv
#MaxThreads 255
#Warn
#WinActivateForce
#Include %A_ScriptDir%
#SingleInstance Force
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
DetectHiddenWindows, Off
SendMode Event
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode 2
SetControlDelay 1
SetWinDelay 0
SetKeyDelay 5
SetMouseDelay 5
SetBatchLines -1
;
;######################################################################################################################################################################################################
; PRE-MACRO SETUP (This is VERY important. Do not touch this)
;######################################################################################################################################################################################################
;
; The code below is a slightly altered version a section taken from Natro Macro. All credits for this code goes to them.
; checks for the correct AHK version before starting
RunWith(32)
RunWith(bits) {
	If (A_IsCompiled || (A_IsUnicode && (A_PtrSize = (bits = 32 ? 4 : 8))))
		Return

	SplitPath, A_AhkPath,, ahkDirectory

	If (!FileExist(ahkPath := ahkDirectory "\AutoHotkeyU" bits ".exe"))
		MsgBox, 0x10, "Error", % "Couldn't find the " bits "-bit Unicode version of Autohotkey in:`n" ahkPath
	Else
		Reload(ahkpath)

	ExitApp
}
Reload(ahkpath) {
	static cmd := DllCall("GetCommandLine", "Str"), params := DllCall("shlwapi\PathGetArgs","Str",cmd,"Str")
	Run % """" ahkpath """ /r " params
}

; elevate script if required (check write permissions in ScriptDir)
h := DllCall("CreateFile", "Str", A_ScriptFullPath, "UInt", 0x40000000, "UInt", 0, "UInt", 0, "UInt", 4, "UInt", 0, "UInt", 0), DllCall("CloseHandle", "UInt", h)
if (h = -1)
{
	if (!A_IsAdmin || !(DllCall("GetCommandLine","Str") ~= " /restart(?!\S)"))
		Try RunWait, *RunAs "%A_AhkPath%" /script /restart "%A_ScriptFullPath%"
	if !A_IsAdmin {
		MsgBox, 0x40010, Error, You must run this macro as administrator in this folder!`nIf you don't want to do this, move the macro to a different folder (e.g. Downloads, Desktop)
		ExitApp
	}
	; elevated but still can't write, read-only directory?
	MsgBox, 0x40010, Error, You cannot run this macro in this folder!`nTry moving the macro to a different folder (e.g. Downloads, Desktop)
	ExitApp
}

; declare executable paths
global exe_path32 := A_AhkPath
global exe_path64 := (A_Is64bitOS && FileExist("submacros\AutoHotkeyU64.exe")) ? (A_WorkingDir "\submacros\AutoHotkeyU64.exe") : A_AhkPath

if (A_ScreenDPI*100//96 != 100) {
	msgbox, 0x1030, WARNING!!, % "Your Display Scale seems to be a value other than 100`%. This means the macro will NOT work correctly!`n`nTo change this, right click on your Desktop -> Click 'Display Settings' -> Under 'Scale & Layout', set Scale to 100`% -> Close and Restart Roblox before starting the macro.", 60
	ExitApp
}
; Section by Natro Macro ends here.

mode := 1
TogglePause := 1
AlreadyChattedMaxLevel := 0
Gui, +AlwaysOnTop
;
;######################################################################################################################################################################################################
; GUI (Unless you know how to do GUI stuff, Don't touch this.)
;######################################################################################################################################################################################################
;
Gui, Add, Tab3, x-2 y0 w915 h705, Modes|Credits
;[MODES]
Gui, Tab, 1
;{Grind Spins/Auto-Spin}
;(Commons)
Gui, Add, CheckBox, x15 y91 vCheckBoxFire, Fire
Gui, Add, CheckBox, xp yp+26 vCheckBoxWater, Water
Gui, Add, CheckBox, xp yp+26 vCheckBoxPoison, Poison
Gui, Add, CheckBox, xp yp+26 vCheckBoxSand, Sand
Gui, Add, CheckBox, xp yp+26 vCheckBoxDark, Dark
Gui, Add, CheckBox, xp yp+26 vCheckBoxLight, Light
Gui, Add, CheckBox, xp yp+26 vCheckBoxIce, Ice
Gui, Add, CheckBox, xp yp+26 vCheckBoxLightning, Lightning
Gui, Add, CheckBox, xp yp+26 vCheckBoxWood, Wood
Gui, Add, CheckBox, xp yp+26 vCheckBoxEarth, Earth
Gui, Add, CheckBox, xp yp+26 vCheckBoxWind, Wind
;(Uncommons)
Gui, Add, CheckBox, xp yp+26 vCheckBoxNova, Nova
Gui, Add, CheckBox, xp yp+26 vCheckBoxExplosion, Explosion
Gui, Add, CheckBox, xp yp+26 vCheckBoxBlood, Blood
Gui, Add, CheckBox, xp yp+26 vCheckBoxMetal, Metal
;(Ascendeds)
Gui, Add, CheckBox, x165 y91 Disabled vCheckBoxInferno, Inferno
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxTorrent, Torrent
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxToxin, Toxin
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxDesert, Desert
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxYin, Yin
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxYang, Yang
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxPermafrost, Peramfrost
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxBolt, Bolt
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxNature, Nature
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxTerra, Terra
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxZephyr, Zephyr
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxSupernova, Supernova
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxCombustion, Combustion
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxHemomancer, Hemomancer
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxObsidian, Obsidian
;(Rares)
Gui, Add, CheckBox, x315 y91 vCheckBoxMechanization, Mechanization
Gui, Add, CheckBox, xp yp+26 vCheckBoxLava, Lava
Gui, Add, CheckBox, xp yp+26 vCheckBoxSound, Sound
Gui, Add, CheckBox, xp yp+26 vCheckBoxChaos, Chaos
Gui, Add, CheckBox, xp yp+26 vCheckBoxRadiation, Radiation
Gui, Add, CheckBox, xp yp+26 vCheckBoxPlasma, Plasma
Gui, Add, CheckBox, xp yp+26 vCheckBoxArmament, Armament
;(Legends)
Gui, Add, CheckBox, x465 y91 vCheckBoxLunar, Lunar
Gui, Add, CheckBox, xp yp+26 vCheckBoxPhoenix, Phoenix
Gui, Add, CheckBox, xp yp+26 vCheckBoxSolar, Solar
Gui, Add, CheckBox, xp yp+26 vCheckBoxHydra, Hydra
Gui, Add, CheckBox, xp yp+26 vCheckBoxIllusion, Illusion
Gui, Add, CheckBox, xp yp+26 vCheckBoxCosmic, Cosmic
Gui, Add, CheckBox, xp yp+26 vCheckBoxPrism, Prism
;(Myths)
Gui, Add, CheckBox, x615 y91 vCheckBoxAcceleration, Acceleration
Gui, Add, CheckBox, xp yp+26 vCheckBoxTelekinesis, Telekinesis
Gui, Add, CheckBox, xp yp+26 vCheckBoxDragon, Dragon
Gui, Add, CheckBox, xp yp+26 vCheckBoxArcOfTheElements, Arc of the Elements
Gui, Add, CheckBox, xp yp+26 vCheckBoxTime, Time
Gui, Add, CheckBox, xp yp+26 vCheckBoxHeavensWrath, Heaven's Wrath
Gui, Add, CheckBox, xp yp+26 vCheckBoxDestruction, Destruction
Gui, Add, CheckBox, xp yp+26 vCheckBoxNecromancer, Necromancer
Gui, Add, CheckBox, xp yp+26 vCheckBoxDragonBlade, Dragon Blade
Gui, Add, CheckBox, xp yp+26 vCheckBoxSpectre, Spectre
;(Secondaries)
Gui, Add, CheckBox, x765 y91 Disabled vCheckBoxSnow, Snow
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxFirework, Firework
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxDemon, Demon
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxDullahan, Dullahan
Gui, Add, CheckBox, xp yp+26 Disabled vCheckBoxKrampus, Krampus

;{Auto-Level}
Gui, Add, Text, x3 y51 vTextElementToLevelUpWith, Element To Level Up With:
;(Commons)
Gui, Add, Radio, x15 y91 Checked vRadioFire, Fire
Gui, Add, Radio, xp yp+26 vRadioWater, Water
Gui, Add, Radio, xp yp+26 vRadioPoison, Poison
Gui, Add, Radio, xp yp+26 vRadioSand, Sand
Gui, Add, Radio, xp yp+26 vRadioDark, Dark
Gui, Add, Radio, xp yp+26 vRadioLight, Light
Gui, Add, Radio, xp yp+26 vRadioIce, Ice
Gui, Add, Radio, xp yp+26 vRadioLightning, Lightning
Gui, Add, Radio, xp yp+26 vRadioWood, Wood
Gui, Add, Radio, xp yp+26 vRadioEarth, Earth
Gui, Add, Radio, xp yp+26 vRadioWind, Wind
;(Uncommons)
Gui, Add, Radio, xp yp+26 vRadioNova, Nova
Gui, Add, Radio, xp yp+26 vRadioExplosion, Explosion
Gui, Add, Radio, xp yp+26 vRadioBlood, Blood
Gui, Add, Radio, xp yp+26 vRadioMetal, Metal
;(Ascendeds)
Gui, Add, Radio, x165 y91 vRadioInferno, Inferno
Gui, Add, Radio, xp yp+26 vRadioTorrent, Torrent
Gui, Add, Radio, xp yp+26 vRadioToxin, Toxin
Gui, Add, Radio, xp yp+26 vRadioDesert, Desert
Gui, Add, Radio, xp yp+26 vRadioYin, Yin
Gui, Add, Radio, xp yp+26 vRadioYang, Yang
Gui, Add, Radio, xp yp+26 vRadioPermafrost, Peramfrost
Gui, Add, Radio, xp yp+26 vRadioBolt, Bolt
Gui, Add, Radio, xp yp+26 vRadioNature, Nature
Gui, Add, Radio, xp yp+26 vRadioTerra, Terra
Gui, Add, Radio, xp yp+26 vRadioZephyr, Zephyr
Gui, Add, Radio, xp yp+26 vRadioSupernova, Supernova
Gui, Add, Radio, xp yp+26 vRadioCombustion, Combustion
Gui, Add, Radio, xp yp+26 vRadioHemomancer, Hemomancer
Gui, Add, Radio, xp yp+26 vRadioObsidian, Obsidian
;(Rares)
Gui, Add, Radio, x315 y91 vRadioMechanization, Mechanization
Gui, Add, Radio, xp yp+26 vRadioLava, Lava
Gui, Add, Radio, xp yp+26 vRadioSound, Sound
Gui, Add, Radio, xp yp+26 vRadioChaos, Chaos
Gui, Add, Radio, xp yp+26 vRadioRadiation, Radiation
Gui, Add, Radio, xp yp+26 vRadioPlasma, Plasma
Gui, Add, Radio, xp yp+26 vRadioArmament, Armament
;(Legends)
Gui, Add, Radio, x465 y91 vRadioLunar, Lunar
Gui, Add, Radio, xp yp+26 vRadioPhoenix, Phoenix
Gui, Add, Radio, xp yp+26 vRadioSolar, Solar
Gui, Add, Radio, xp yp+26 vRadioHydra, Hydra
Gui, Add, Radio, xp yp+26 vRadioIllusion, Illusion
Gui, Add, Radio, xp yp+26 vRadioCosmic, Cosmic
Gui, Add, Radio, xp yp+26 vRadioPrism, Prism
;(Myths)
Gui, Add, Radio, x615 y91 vRadioAcceleration, Acceleration
Gui, Add, Radio, xp yp+26 vRadioTelekinesis, Telekinesis
Gui, Add, Radio, xp yp+26 vRadioDragon, Dragon
Gui, Add, Radio, xp yp+26 vRadioArcOfTheElements, Arc of the Elements
Gui, Add, Radio, xp yp+26 vRadioTime, Time
Gui, Add, Radio, xp yp+26 vRadioHeavensWrath, Heaven's Wrath
Gui, Add, Radio, xp yp+26 vRadioDestruction, Destruction
Gui, Add, Radio, xp yp+26 vRadioNecromancer, Necromancer
Gui, Add, Radio, xp yp+26 vRadioDragonBlade, Dragon Blade
Gui, Add, Radio, xp yp+26 vRadioSpectre, Spectre
;(Secondaries)
Gui, Add, Radio, x765 y91 vRadioSnow, Snow
Gui, Add, Radio, xp yp+26 vRadioFirework, Firework
Gui, Add, Radio, xp yp+26 vRadioDemon, Demon
Gui, Add, Radio, xp yp+26 vRadioDullahan, Dullahan
Gui, Add, Radio, xp yp+26 vRadioKrampus, Krampus

; Hide Auto-Level
GuiControl, Hide, TextElementToLevelUpWith
; Commons
GuiControl, Hide, RadioFire
GuiControl, Hide, RadioWater
GuiControl, Hide, RadioPoison
GuiControl, Hide, RadioSand
GuiControl, Hide, RadioDark
GuiControl, Hide, RadioLight
GuiControl, Hide, RadioIce
GuiControl, Hide, RadioLightning
GuiControl, Hide, RadioWood
GuiControl, Hide, RadioEarth
GuiControl, Hide, RadioWind
; Uncommons
GuiControl, Hide, RadioNova
GuiControl, Hide, RadioExplosion
GuiControl, Hide, RadioBlood
GuiControl, Hide, RadioMetal
; Ascendeds
GuiControl, Hide, RadioInferno
GuiControl, Hide, RadioTorrent
GuiControl, Hide, RadioToxin
GuiControl, Hide, RadioDesert
GuiControl, Hide, RadioYin
GuiControl, Hide, RadioYang
GuiControl, Hide, RadioPermafrost
GuiControl, Hide, RadioBolt
GuiControl, Hide, RadioNature
GuiControl, Hide, RadioTerra
GuiControl, Hide, RadioZephyr
GuiControl, Hide, RadioSupernova
GuiControl, Hide, RadioCombustion
GuiControl, Hide, RadioHemomancer
GuiControl, Hide, RadioObsidian
; Rares
GuiControl, Hide, RadioMechanization
GuiControl, Hide, RadioLava
GuiControl, Hide, RadioSound
GuiControl, Hide, RadioChaos
GuiControl, Hide, RadioRadiation
GuiControl, Hide, RadioPlasma
GuiControl, Hide, RadioArmament
; Legends
GuiControl, Hide, RadioLunar
GuiControl, Hide, RadioPhoenix
GuiControl, Hide, RadioSolar
GuiControl, Hide, RadioHydra
GuiControl, Hide, RadioIllusion
GuiControl, Hide, RadioCosmic
GuiControl, Hide, RadioPrism
; Myths
GuiControl, Hide, RadioAcceleration
GuiControl, Hide, RadioTelekinesis
GuiControl, Hide, RadioDragon
GuiControl, Hide, RadioArcOfTheElements
GuiControl, Hide, RadioTime
GuiControl, Hide, RadioHeavensWrath
GuiControl, Hide, RadioDestruction
GuiControl, Hide, RadioNecromancer
GuiControl, Hide, RadioDragonBlade
GuiControl, Hide, RadioSpectre
;Secondaries
GuiControl, Hide, RadioSnow
GuiControl, Hide, RadioFirework
GuiControl, Hide, RadioDemon
GuiControl, Hide, RadioDullahan
GuiControl, Hide, RadioKrampus

;{SETTINGS}
Gui, Add, Text, x3 y479 vTextSettings, Settings:
Gui, Add, GroupBox, x5 y498 w148 h93 vGroupBoxGUISettings, GUI
Gui, Add, GroupBox, xp+150 yp w298 hp vGroupBoxGeneralSettings, General [UNAVAILABLE]
Gui, Add, GroupBox, xp+300 yp w448 hp vGroupBoxModeSettings, Mode Setting [GRIND SPINS]
;(GUI)
Gui, Add, CheckBox, x15 y518 Checked vCheckBoxAlwaysOnTop gegg_CheckBoxAlwaysOnTop, Always On Top
;(General)
Gui, Add, CheckBox, x165 y518 Disabled vCheckBoxRejoinAfter gegg_CheckBoxRejoinAfter, Rejoin After
Gui, Add, Edit, xp+77 yp-2 w25 h17 Disabled vEditRejoin
Gui, Add, Text, xp+30 yp+2 Disabled vTextRejoinMinutes, Minutes
Gui, Add, CheckBox, x165 y544 Disabled vCheckBoxSaveAfter gegg_CheckBoxSaveAfter, Save After
Gui, Add, Edit, xp+72 yp-2 w25 h17 Disabled vEditSave
Gui, Add, Text, xp+30 yp+2 Disabled vTextSaveMinutes, Minutes
Gui, Add, CheckBox, x165 y570 Disabled vCheckBoxTypeInChatSwitchedMode, Type In Chat The Mode That Was Auto-Switched To
;(Mode Specific)
; Grind Spins
Gui, Add, Checkbox, x465 y518 vCheckBoxSwitchToAutoLevel, Switch To "Auto-Level" Mode If Desired Element Is Spun
Gui, Add, CheckBox, xp yp+26 vCheckBoxTypeInChatSpunElement, Type In Chat The Desired Element If It Was Spun
Gui, Add, Text, xp yp+26 vTextSecondaryEquipped, Secondary Equipped:
Gui, Add, DDL, xp+108 yp-3 w70 Choose1 vDDLSecondaryElement, None|Snow|Firework|Demon|Dullahan|Krampus
; Auto-Spin
Gui, Add, CheckBox, x465 y570 vCheckBoxSwitchToGrindSpins, Switch To Grind Spins If Spins Run Out
GuiControl, Hide, CheckBoxSwitchToGrindSpins
; Auto-Level
Gui, Add, CheckBox, x465 y518 vCheckBoxTypeInChatIfMaxLevel, Type In Chat If You Reach Max Level
GuiControl, Hide, CheckBoxTypeInChatMaxLevel


;{MULTI-MODE GUI}	
Gui, Add, Button, x1 y22 w302 Disabled vButtonGrindSpins gegg_ButtonGrindSpins, Grind Spins [UNAVAILABLE]
Gui, Add, Button, xp+302 yp wp vButtonAutoSpin gegg_ButtonAutoSpin, Auto-Spin [UNAVAILABLE]
Gui, Add, Button, xp+302 yp wp vButtonAutoLevel gegg_ButtonAutoLevel , Auto-Level
Gui, Add, Text, x3 y51 vTextElementsToStopAt, Element(s) To Stop At:
Gui, Add, GroupBox, x5 y70 w148 h405 vGroupBoxCommonsAndUncommons, Commons and Uncommons
Gui, Add, GroupBox, xp+150 yp wp hp vGroupBoxAscendeds, Ascendeds [DISABLED]
Gui, Add, GroupBox, xp+150 yp wp hp vGroupBoxRares, Rares
Gui, Add, GroupBox, xp+150 yp wp hp vGroupBoxLegends, Legends
Gui, Add, GroupBox, xp+150 yp wp hp vGroupBoxMyths, Myths
Gui, Add, GroupBox, xp+150 yp wp hp vGroupBoxSecondaries, Secondaries [DISABLED]
Gui, Add, Text, x3 y70 w2 h406 0x7 vVerticalDivider1
Gui, Add, Text, xp+150 yp wp hp 0x7 vVerticalDivider2
Gui, Add, Text, xp+150 yp wp hp 0x7 vVerticalDivider3
Gui, Add, Text, xp+150 yp wp hp 0x7 vVerticalDivider4
Gui, Add, Text, xp+150 yp wp hp 0x7 vVerticalDivider5
Gui, Add, Text, xp+150 yp wp hp 0x7 vVerticalDivider6
Gui, Add, Text, xp+150 yp wp hp 0x7 vVerticalDivider7
Gui, Add, Text, x3 y496 w2 h95 0x7 vVerticalDivider8
Gui, Add, Text, xp+150 yp wp hp 0x7 vVerticalDivider9
Gui, Add, Text, xp+300 yp wp hp 0x7 vVerticalDivider10
Gui, Add, Text, xp+450 yp wp hp 0x7 vVerticalDivider11
Gui, Add, Text, x2 y46 w904 h2 0x7 vHorizontalDivider1
Gui, Add, Text, x3 y68 w902 hp 0x7 vHorizontalDivider2
Gui, Add, Text, xp y474 wp hp 0x7 vHorizontalDivider3
Gui, Add, Text, xp y496 wp hp 0x7 vHorizontalDivider4
Gui, Add, Text, xp y590 wp hp 0x7 vHorizontalDivider5
Gui, Add, Text, x3 y84 w902 h1 0x7 vThinHorizontalDivider1
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider2
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider3
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider4
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider5
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider6
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider7
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider8
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider9
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider10
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider11
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider12
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider13
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider14
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider15
Gui, Add, Text, xp y512 wp hp 0x7 vThinHorizontalDivider16
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider17
Gui, Add, Text, xp yp+26 wp hp 0x7 vThinHorizontalDivider18
Gui, Add, Button, x4 y597 w100 vButtonStartRestart gegg_ButtonStartRestart, Start/Restart (F1)
Gui, Add, Button, xp+100 yp w100 vButtonPausePlay gegg_ButtonPausePlay, Pause/Play (F2)
Gui, Add, Button, xp+100 yp w100 vButtonStopReload gegg_ButtonStopReload, Stop/Reload (F3)
Gui, Add, Text, xp+102 yp-4 w1 h31 0x7 vThinVerticalDivider
Gui, Add, Text, xp+4 yp+9 vTextCurrentMode, Current Mode: Grind Spins (Note: This mode WILL reset your level and spin off of your primary element.)
Gui, Add, Text, xp+565 yp+9 vVersionNumber, v2.0.0
Gui, Show, w908 h625 Center, EGGcellent Macro
;
;######################################################################################################################################################################################################
; FUNCTIONS & SUBROUTINES (This is the most important section of this macro as it contains the actual macro. DO. NOT. TOUCH THIS.)
;######################################################################################################################################################################################################
;
;[FUNCTIONS]
;{GUI Functions}
egg_Submit(){
	Gui, Submit, Nohide
	return
}

egg_ChangeMode(modeNumber){ ; Switches the mode.
	return modeNumber	
}

egg_ToggleModeGUI(buttonPressed){ ; Toggles the 3 subtabs.
	egg_Submit()
	Gui, Tab, 1
	if (buttonPressed = 1) {
		; Hides the "Auto-Spin" subtab.
		GuiControl, Hide, ThinHorizontalDivider1
		GuiControl, Hide, ThinHorizontalDivider2
		GuiControl, Hide, ThinHorizontalDivider3
		GuiControl, Hide, ThinHorizontalDivider4
		GuiControl, Hide, ThinHorizontalDivider5
		GuiControl, Hide, ThinHorizontalDivider6
		GuiControl, Hide, ThinHorizontalDivider7
		GuiControl, Hide, ThinHorizontalDivider8
		GuiControl, Hide, ThinHorizontalDivider9
		GuiControl, Hide, ThinHorizontalDivider10
		GuiControl, Hide, ThinHorizontalDivider11
		GuiControl, Hide, ThinHorizontalDivider12
		GuiControl, Hide, ThinHorizontalDivider13
		GuiControl, Hide, ThinHorizontalDivider14
		GuiControl, Hide, ThinHorizontalDivider15
		GuiControl, Hide, ThinHorizontalDivider16
		GuiControl, Hide, ThinHorizontalDivider17
		GuiControl, Hide, ThinHorizontalDivider18
		GuiControl, Hide, CheckBoxSwitchToGrindSpins

		; Hides the "Auto-Level" subtab.
		GuiControl, Hide, TextElementToLevelUpWith
		GuiControl, Hide, CheckBoxTypeInChatIfMaxLevel

		; Commons
		GuiControl, Hide, RadioFire
		GuiControl, Hide, RadioWater
		GuiControl, Hide, RadioPoison
		GuiControl, Hide, RadioSand
		GuiControl, Hide, RadioDark
		GuiControl, Hide, RadioLight
		GuiControl, Hide, RadioIce
		GuiControl, Hide, RadioLightning
		GuiControl, Hide, RadioWood
		GuiControl, Hide, RadioEarth
		GuiControl, Hide, RadioWind
		; Uncommons
		GuiControl, Hide, RadioNova
		GuiControl, Hide, RadioExplosion
		GuiControl, Hide, RadioBlood
		GuiControl, Hide, RadioMetal
		; Ascendeds
		GuiControl, Hide, RadioInferno
		GuiControl, Hide, RadioTorrent
		GuiControl, Hide, RadioToxin
		GuiControl, Hide, RadioDesert
		GuiControl, Hide, RadioYin
		GuiControl, Hide, RadioYang
		GuiControl, Hide, RadioPermafrost
		GuiControl, Hide, RadioBolt
		GuiControl, Hide, RadioNature
		GuiControl, Hide, RadioTerra
		GuiControl, Hide, RadioZephyr
		GuiControl, Hide, RadioSupernova
		GuiControl, Hide, RadioCombustion
		GuiControl, Hide, RadioHemomancer
		GuiControl, Hide, RadioObsidian
		; Rares
		GuiControl, Hide, RadioMechanization
		GuiControl, Hide, RadioLava
		GuiControl, Hide, RadioSound
		GuiControl, Hide, RadioChaos
		GuiControl, Hide, RadioRadiation
		GuiControl, Hide, RadioPlasma
		GuiControl, Hide, RadioArmament
		; Legend
		GuiControl, Hide, RadioLunar
		GuiControl, Hide, RadioPhoenix
		GuiControl, Hide, RadioSolar
		GuiControl, Hide, RadioHydra
		GuiControl, Hide, RadioIllusion
		GuiControl, Hide, RadioCosmic
		GuiControl, Hide, RadioPrism
		; Myths
		GuiControl, Hide, RadioAcceleration
		GuiControl, Hide, RadioTelekinesis
		GuiControl, Hide, RadioDragon
		GuiControl, Hide, RadioArcOfTheElements
		GuiControl, Hide, RadioTime
		GuiControl, Hide, RadioHeavensWrath
		GuiControl, Hide, RadioDestruction
		GuiControl, Hide, RadioNecromancer
		GuiControl, Hide, RadioDragonBlade
		GuiControl, Hide, RadioSpectre
		; Secondaries
		GuiControl, Hide, RadioSnow
		GuiControl, Hide, RadioFirework
		GuiControl, Hide, RadioDemon
		GuiControl, Hide, RadioDullahan
		GuiControl, Hide, RadioKrampus


		; Shows the "Grind Spins" subtab.
		GuiControl, Text, TextCurrentMode, Current Mode: Grind Spins (Note: This mode WILL reset your level and spin off of your primary element.)
		GuiControl, Text, GroupBoxAscendeds, Ascendeds [DISABLED]
		GuiControl, Text, GroupBoxSecondaries, Secondaries [DISABLED]
		GuiControl, Show, ThinHorizontalDivider1
		GuiControl, Show, ThinHorizontalDivider2
		GuiControl, Show, ThinHorizontalDivider3
		GuiControl, Show, ThinHorizontalDivider4
		GuiControl, Show, ThinHorizontalDivider5
		GuiControl, Show, ThinHorizontalDivider6
		GuiControl, Show, ThinHorizontalDivider7
		GuiControl, Show, ThinHorizontalDivider8
		GuiControl, Show, ThinHorizontalDivider9
		GuiControl, Show, ThinHorizontalDivider10
		GuiControl, Show, ThinHorizontalDivider11
		GuiControl, Show, ThinHorizontalDivider12
		GuiControl, Show, ThinHorizontalDivider13
		GuiControl, Show, ThinHorizontalDivider14
		GuiControl, Show, ThinHorizontalDivider15
		; Commons
		GuiControl, Show, CheckBoxFire
		GuiControl, Show, CheckBoxWater
		GuiControl, Show, CheckBoxPoison
		GuiControl, Show, CheckBoxSand
		GuiControl, Show, CheckBoxDark
		GuiControl, Show, CheckBoxLight
		GuiControl, Show, CheckBoxIce
		GuiControl, Show, CheckBoxLightning
		GuiControl, Show, CheckBoxWood
		GuiControl, Show, CheckBoxEarth
		GuiControl, Show, CheckBoxWind
		; Uncommons
		GuiControl, Show, CheckBoxNova
		GuiControl, Show, CheckBoxExplosion
		GuiControl, Show, CheckBoxBlood
		GuiControl, Show, CheckBoxMetal
		; Ascendeds
		GuiControl, Show, CheckBoxInferno
		GuiControl, Show, CheckBoxTorrent
		GuiControl, Show, CheckBoxToxin
		GuiControl, Show, CheckBoxDesert
		GuiControl, Show, CheckBoxYin
		GuiControl, Show, CheckBoxYang
		GuiControl, Show, CheckBoxPermafrost
		GuiControl, Show, CheckBoxBolt
		GuiControl, Show, CheckBoxNature
		GuiControl, Show, CheckBoxTerra
		GuiControl, Show, CheckBoxZephyr
		GuiControl, Show, CheckBoxSupernova
		GuiControl, Show, CheckBoxCombustion
		GuiControl, Show, CheckBoxHemomancer
		GuiControl, Show, CheckBoxObsidian
		GuiControl, Disable, CheckBoxInferno
		GuiControl, Disable, CheckBoxTorrent
		GuiControl, Disable, CheckBoxToxin
		GuiControl, Disable, CheckBoxDesert
		GuiControl, Disable, CheckBoxYin
		GuiControl, Disable, CheckBoxYang
		GuiControl, Disable, CheckBoxPermafrost
		GuiControl, Disable, CheckBoxBolt
		GuiControl, Disable, CheckBoxNature
		GuiControl, Disable, CheckBoxTerra
		GuiControl, Disable, CheckBoxZephyr
		GuiControl, Disable, CheckBoxSupernova
		GuiControl, Disable, CheckBoxCombustion
		GuiControl, Disable, CheckBoxHemomancer
		GuiControl, Disable, CheckBoxObsidian
		; Rares
		GuiControl, Show, CheckBoxMechanization
		GuiControl, Show, CheckBoxLava
		GuiControl, Show, CheckBoxSound
		GuiControl, Show, CheckBoxChaos
		GuiControl, Show, CheckBoxRadiation
		GuiControl, Show, CheckBoxPlasma
		GuiControl, Show, CheckBoxArmament
		; Legend 
		GuiControl, Show, CheckBoxLunar
		GuiControl, Show, CheckBoxPhoenix
		GuiControl, Show, CheckBoxSolar
		GuiControl, Show, CheckBoxHydra
		GuiControl, Show, CheckBoxIllusion
		GuiControl, Show, CheckBoxCosmic
		GuiControl, Show, CheckBoxPrism
		; Myths		
		GuiControl, Show, CheckBoxAcceleration
		GuiControl, Show, CheckBoxTelekinesis
		GuiControl, Show, CheckBoxDragon
		GuiControl, Show, CheckBoxArcOfTheElements
		GuiControl, Show, CheckBoxTime
		GuiControl, Show, CheckBoxHeavensWrath
		GuiControl, Show, CheckBoxDestruction
		GuiControl, Show, CheckBoxNecromancer
		GuiControl, Show, CheckBoxDragonBlade
		GuiControl, Show, CheckBoxSpectre
		; Secondaries
		GuiControl, Show, CheckBoxSnow
		GuiControl, Show, CheckBoxFirework
		GuiControl, Show, CheckBoxDemon
		GuiControl, Show, CheckBoxDullahan
		GuiControl, Show, CheckBoxKrampus

		;{Settings}
		GuiControl, Text, GroupBoxModeSettings, Mode Settings [GRIND SPINS]
		GuiControl, Show, ThinHorizontalDivider16
		GuiControl, Show, ThinHorizontalDivider17
		GuiControl, Show, ThinHorizontalDivider18
		GuiControl, Show, CheckBoxSwitchToAutoLevel
		GuiControl, Show, CheckBoxTypeInChatSpunElement
		GuiControl, Show, TextSecondaryEquipped
		GuiControl, Show, DDLSecondaryElement



	} else if (buttonPressed = 2) {
		; Hides the "Grind Spins" subtab.
		GuiControl, Hide, TextSecondaryEquipped
		GuiControl, Hide, DDLSecondaryElement
		GuiControl, Hide, ThinHorizontalDivider1
		GuiControl, Hide, ThinHorizontalDivider2
		GuiControl, Hide, ThinHorizontalDivider3
		GuiControl, Hide, ThinHorizontalDivider4
		GuiControl, Hide, ThinHorizontalDivider5
		GuiControl, Hide, ThinHorizontalDivider6
		GuiControl, Hide, ThinHorizontalDivider7
		GuiControl, Hide, ThinHorizontalDivider8
		GuiControl, Hide, ThinHorizontalDivider9
		GuiControl, Hide, ThinHorizontalDivider10
		GuiControl, Hide, ThinHorizontalDivider11
		GuiControl, Hide, ThinHorizontalDivider12
		GuiControl, Hide, ThinHorizontalDivider13
		GuiControl, Hide, ThinHorizontalDivider14
		GuiControl, Hide, ThinHorizontalDivider15
		GuiControl, Hide, ThinHorizontalDivider16
		GuiControl, Hide, ThinHorizontalDivider17
		GuiControl, Hide, ThinHorizontalDivider18

		; Hides the "Auto-Level" subtab.
		GuiControl, Hide, TextElementToLevelUpWith
		GuiControl, Hide, CheckBoxTypeInChatIfMaxLevel

		; Commons
		GuiControl, Hide, RadioFire
		GuiControl, Hide, RadioWater
		GuiControl, Hide, RadioPoison
		GuiControl, Hide, RadioSand
		GuiControl, Hide, RadioDark
		GuiControl, Hide, RadioLight
		GuiControl, Hide, RadioIce
		GuiControl, Hide, RadioLightning
		GuiControl, Hide, RadioWood
		GuiControl, Hide, RadioEarth
		GuiControl, Hide, RadioWind
		; Uncommons
		GuiControl, Hide, RadioNova
		GuiControl, Hide, RadioExplosion
		GuiControl, Hide, RadioBlood
		GuiControl, Hide, RadioMetal
		; Ascendeds
		GuiControl, Hide, RadioInferno
		GuiControl, Hide, RadioTorrent
		GuiControl, Hide, RadioToxin
		GuiControl, Hide, RadioDesert
		GuiControl, Hide, RadioYin
		GuiControl, Hide, RadioYang
		GuiControl, Hide, RadioPermafrost
		GuiControl, Hide, RadioBolt
		GuiControl, Hide, RadioNature
		GuiControl, Hide, RadioTerra
		GuiControl, Hide, RadioZephyr
		GuiControl, Hide, RadioSupernova
		GuiControl, Hide, RadioCombustion
		GuiControl, Hide, RadioHemomancer
		GuiControl, Hide, RadioObsidian
		; Rares
		GuiControl, Hide, RadioMechanization
		GuiControl, Hide, RadioLava
		GuiControl, Hide, RadioSound
		GuiControl, Hide, RadioChaos
		GuiControl, Hide, RadioRadiation
		GuiControl, Hide, RadioPlasma
		GuiControl, Hide, RadioArmament
		; Legend
		GuiControl, Hide, RadioLunar
		GuiControl, Hide, RadioPhoenix
		GuiControl, Hide, RadioSolar
		GuiControl, Hide, RadioHydra
		GuiControl, Hide, RadioIllusion
		GuiControl, Hide, RadioCosmic
		GuiControl, Hide, RadioPrism
		; Myths
		GuiControl, Hide, RadioAcceleration
		GuiControl, Hide, RadioTelekinesis
		GuiControl, Hide, RadioDragon
		GuiControl, Hide, RadioArcOfTheElements
		GuiControl, Hide, RadioTime
		GuiControl, Hide, RadioHeavensWrath
		GuiControl, Hide, RadioDestruction
		GuiControl, Hide, RadioNecromancer
		GuiControl, Hide, RadioDragonBlade
		GuiControl, Hide, RadioSpectre
		; Secondary
		GuiControl, Hide, RadioSnow
		GuiControl, Hide, RadioFirework
		GuiControl, Hide, RadioDemon
		GuiControl, Hide, RadioDullahan
		GuiControl, Hide, RadioKrampus

		; Shows the "Auto-Spin" subtab.
		GuiControl, Text, TextCurrentMode, Current Mode: Auto-Spin
		GuiControl, Show, TextElementsToStopAt
		GuiControl, Text, GroupBoxAscendeds, Ascendeds
		GuiControl, Text, GroupBoxSecondaries, Secondaries [DISABLED]
		GuiControl, Show, ThinHorizontalDivider1
		GuiControl, Show, ThinHorizontalDivider2
		GuiControl, Show, ThinHorizontalDivider3
		GuiControl, Show, ThinHorizontalDivider4
		GuiControl, Show, ThinHorizontalDivider5
		GuiControl, Show, ThinHorizontalDivider6
		GuiControl, Show, ThinHorizontalDivider7
		GuiControl, Show, ThinHorizontalDivider8
		GuiControl, Show, ThinHorizontalDivider9
		GuiControl, Show, ThinHorizontalDivider10
		GuiControl, Show, ThinHorizontalDivider11
		GuiControl, Show, ThinHorizontalDivider12
		GuiControl, Show, ThinHorizontalDivider13
		GuiControl, Show, ThinHorizontalDivider14
		GuiControl, Show, ThinHorizontalDivider15
		;Commons
		GuiControl, Show, CheckBoxFire
		GuiControl, Show, CheckBoxWater
		GuiControl, Show, CheckBoxPoison
		GuiControl, Show, CheckBoxSand
		GuiControl, Show, CheckBoxDark
		GuiControl, Show, CheckBoxLight
		GuiControl, Show, CheckBoxIce
		GuiControl, Show, CheckBoxLightning
		GuiControl, Show, CheckBoxWood
		GuiControl, Show, CheckBoxEarth
		GuiControl, Show, CheckBoxWind
		; Uncommons
		GuiControl, Show, CheckBoxNova
		GuiControl, Show, CheckBoxExplosion
		GuiControl, Show, CheckBoxBlood
		GuiControl, Show, CheckBoxMetal
		; Ascendeds
		GuiControl, Show, CheckBoxInferno
		GuiControl, Show, CheckBoxTorrent
		GuiControl, Show, CheckBoxToxin
		GuiControl, Show, CheckBoxDesert
		GuiControl, Show, CheckBoxYin
		GuiControl, Show, CheckBoxYang
		GuiControl, Show, CheckBoxPermafrost
		GuiControl, Show, CheckBoxBolt
		GuiControl, Show, CheckBoxNature
		GuiControl, Show, CheckBoxTerra
		GuiControl, Show, CheckBoxZephyr
		GuiControl, Show, CheckBoxSupernova
		GuiControl, Show, CheckBoxCombustion
		GuiControl, Show, CheckBoxHemomancer
		GuiControl, Show, CheckBoxObsidian
		GuiControl, Enable, CheckBoxInferno
		GuiControl, Enable, CheckBoxTorrent
		GuiControl, Enable, CheckBoxToxin
		GuiControl, Enable, CheckBoxDesert
		GuiControl, Enable, CheckBoxYin
		GuiControl, Enable, CheckBoxYang
		GuiControl, Enable, CheckBoxPermafrost
		GuiControl, Enable, CheckBoxBolt
		GuiControl, Enable, CheckBoxNature
		GuiControl, Enable, CheckBoxTerra
		GuiControl, Enable, CheckBoxZephyr
		GuiControl, Enable, CheckBoxSupernova
		GuiControl, Enable, CheckBoxCombustion
		GuiControl, Enable, CheckBoxHemomancer
		GuiControl, Enable, CheckBoxObsidian		
		; Rares
		GuiControl, Show, CheckBoxMechanization
		GuiControl, Show, CheckBoxLava
		GuiControl, Show, CheckBoxSound
		GuiControl, Show, CheckBoxChaos
		GuiControl, Show, CheckBoxRadiation
		GuiControl, Show, CheckBoxPlasma
		GuiControl, Show, CheckBoxArmament
		; Legends
		GuiControl, Show, CheckBoxLunar
		GuiControl, Show, CheckBoxPhoenix
		GuiControl, Show, CheckBoxSolar
		GuiControl, Show, CheckBoxHydra
		GuiControl, Show, CheckBoxIllusion
		GuiControl, Show, CheckBoxCosmic
		GuiControl, Show, CheckBoxPrism
		; Myths
		GuiControl, Show, CheckBoxAcceleration
		GuiControl, Show, CheckBoxTelekinesis
		GuiControl, Show, CheckBoxDragon
		GuiControl, Show, CheckBoxArcOfTheElements
		GuiControl, Show, CheckBoxTime
		GuiControl, Show, CheckBoxHeavensWrath
		GuiControl, Show, CheckBoxDestruction
		GuiControl, Show, CheckBoxNecromancer
		GuiControl, Show, CheckBoxDragonBlade
		GuiControl, Show, CheckBoxSpectre
		; Secondaries
		GuiControl, Show, CheckBoxSnow
		GuiControl, Show, CheckBoxFirework
		GuiControl, Show, CheckBoxDemon
		GuiControl, Show, CheckBoxDullahan
		GuiControl, Show, CheckBoxKrampus

		;{Settings}
		GuiControl, Text, GroupBoxModeSettings, Mode Settings [AUTO-SPIN]
		GuiControl, Show, ThinHorizontalDivider16
		GuiControl, Show, ThinHorizontalDivider17
		GuiControl, Show, ThinHorizontalDivider18
		GuiControl, Show, CheckBoxSwitchToAutoLevel
		GuiControl, Show, CheckBoxTypeInChatSpunElement
		GuiControl, Show, CheckBoxSwitchToGrindSpins



	} else if (buttonPressed = 3){
		; Hides the "Grind Spins/Auto-Spin" subtab.
		GuiControl, Hide, TextElementsToStopAt
		GuiControl, Hide, ThinHorizontalDivider1
		GuiControl, Hide, ThinHorizontalDivider2
		GuiControl, Hide, ThinHorizontalDivider3
		GuiControl, Hide, ThinHorizontalDivider4
		GuiControl, Hide, ThinHorizontalDivider5
		GuiControl, Hide, ThinHorizontalDivider6
		GuiControl, Hide, ThinHorizontalDivider7
		GuiControl, Hide, ThinHorizontalDivider8
		GuiControl, Hide, ThinHorizontalDivider9
		GuiControl, Hide, ThinHorizontalDivider10
		GuiControl, Hide, ThinHorizontalDivider11
		GuiControl, Hide, ThinHorizontalDivider12
		GuiControl, Hide, ThinHorizontalDivider13
		GuiControl, Hide, ThinHorizontalDivider14
		GuiControl, Hide, ThinHorizontalDivider15
		GuiControl, Hide, ThinHorizontalDivider16
		GuiControl, Hide, ThinHorizontalDivider17
		GuiControl, Hide, ThinHorizontalDivider18
		; Commons
		GuiControl, Hide, CheckBoxFire
		GuiControl, Hide, CheckBoxWater
		GuiControl, Hide, CheckBoxPoison
		GuiControl, Hide, CheckBoxSand
		GuiControl, Hide, CheckBoxDark
		GuiControl, Hide, CheckBoxLight
		GuiControl, Hide, CheckBoxIce
		GuiControl, Hide, CheckBoxLightning
		GuiControl, Hide, CheckBoxWood
		GuiControl, Hide, CheckBoxEarth
		GuiControl, Hide, CheckBoxWind
		; Uncommons
		GuiControl, Hide, CheckBoxNova
		GuiControl, Hide, CheckBoxExplosion
		GuiControl, Hide, CheckBoxBlood
		GuiControl, Hide, CheckBoxMetal
		; Ascendeds
		GuiControl, Hide, CheckBoxInferno
		GuiControl, Hide, CheckBoxTorrent
		GuiControl, Hide, CheckBoxToxin
		GuiControl, Hide, CheckBoxDesert
		GuiControl, Hide, CheckBoxYin
		GuiControl, Hide, CheckBoxYang
		GuiControl, Hide, CheckBoxPermafrost
		GuiControl, Hide, CheckBoxBolt
		GuiControl, Hide, CheckBoxNature
		GuiControl, Hide, CheckBoxTerra
		GuiControl, Hide, CheckBoxZephyr
		GuiControl, Hide, CheckBoxSupernova
		GuiControl, Hide, CheckBoxCombustion
		GuiControl, Hide, CheckBoxHemomancer
		GuiControl, Hide, CheckBoxObsidian
		; Rares
		GuiControl, Hide, CheckBoxMechanization
		GuiControl, Hide, CheckBoxLava
		GuiControl, Hide, CheckBoxSound
		GuiControl, Hide, CheckBoxChaos
		GuiControl, Hide, CheckBoxRadiation
		GuiControl, Hide, CheckBoxPlasma
		GuiControl, Hide, CheckBoxArmament
		; Legend
		GuiControl, Hide, CheckBoxLunar
		GuiControl, Hide, CheckBoxPhoenix
		GuiControl, Hide, CheckBoxSolar
		GuiControl, Hide, CheckBoxHydra
		GuiControl, Hide, CheckBoxIllusion
		GuiControl, Hide, CheckBoxCosmic
		GuiControl, Hide, CheckBoxPrism
		; Myths
		GuiControl, Hide, CheckBoxAcceleration
		GuiControl, Hide, CheckBoxTelekinesis
		GuiControl, Hide, CheckBoxDragon
		GuiControl, Hide, CheckBoxArcOfTheElements
		GuiControl, Hide, CheckBoxTime
		GuiControl, Hide, CheckBoxHeavensWrath
		GuiControl, Hide, CheckBoxDestruction
		GuiControl, Hide, CheckBoxNecromancer
		GuiControl, Hide, CheckBoxDragonBlade
		GuiControl, Hide, CheckBoxSpectre
		; Secondaries
		GuiControl, Hide, CheckBoxSnows
		GuiControl, Hide, CheckBoxFirework
		GuiControl, Hide, CheckBoxDemon
		GuiControl, Hide, CheckBoxDullahan
		GuiControl, Hide, CheckBoxKrampus
		
		;{Settings}
		GuiControl, Hide, CheckBoxSwitchToAutoLevel
		GuiControl, Hide, CheckBoxTypeInChatSpunElement
		GuiControl, Hide, TextSecondaryEquipped
		GuiControl, Hide, DDLSecondaryElement
		GuiControl, Hide, CheckBoxSwitchToGrindSpins


		; Shows the "Auto-Level" subtab.
		GuiControl, Text, TextCurrentMode, Current Mode: Auto-Level
		GuiControl, Show, TextElementToLevelUpWith
		GuiControl, Text, GroupBoxAscendeds, Ascendeds
		GuiControl, Text, GroupBoxSecondaries, Secondaries
		GuiControl, Show, ThinHorizontalDivider1
		GuiControl, Show, ThinHorizontalDivider2
		GuiControl, Show, ThinHorizontalDivider3
		GuiControl, Show, ThinHorizontalDivider4
		GuiControl, Show, ThinHorizontalDivider5
		GuiControl, Show, ThinHorizontalDivider6
		GuiControl, Show, ThinHorizontalDivider7
		GuiControl, Show, ThinHorizontalDivider8
		GuiControl, Show, ThinHorizontalDivider9
		GuiControl, Show, ThinHorizontalDivider10
		GuiControl, Show, ThinHorizontalDivider11
		GuiControl, Show, ThinHorizontalDivider12
		GuiControl, Show, ThinHorizontalDivider13
		GuiControl, Show, ThinHorizontalDivider14
		GuiControl, Show, ThinHorizontalDivider15

		; Commons
		GuiControl, Show, RadioFire
		GuiControl, Show, RadioWater
		GuiControl, Show, RadioPoison
		GuiControl, Show, RadioSand
		GuiControl, Show, RadioDark
		GuiControl, Show, RadioLight
		GuiControl, Show, RadioIce
		GuiControl, Show, RadioLightning
		GuiControl, Show, RadioWood
		GuiControl, Show, RadioEarth
		GuiControl, Show, RadioWind
		; Uncommons
		GuiControl, Show, RadioNova
		GuiControl, Show, RadioExplosion
		GuiControl, Show, RadioBlood
		GuiControl, Show, RadioMetal
		; Ascendeds
		GuiControl, Show, RadioInferno
		GuiControl, Show, RadioTorrent
		GuiControl, Show, RadioToxin
		GuiControl, Show, RadioDesert
		GuiControl, Show, RadioYin
		GuiControl, Show, RadioYang
		GuiControl, Show, RadioPermafrost
		GuiControl, Show, RadioBolt
		GuiControl, Show, RadioNature
		GuiControl, Show, RadioTerra
		GuiControl, Show, RadioZephyr
		GuiControl, Show, RadioSupernova
		GuiControl, Show, RadioCombustion
		GuiControl, Show, RadioHemomancer
		GuiControl, Show, RadioObsidian
		; Rares
		GuiControl, Show, RadioMechanization
		GuiControl, Show, RadioLava
		GuiControl, Show, RadioSound
		GuiControl, Show, RadioChaos
		GuiControl, Show, RadioRadiation
		GuiControl, Show, RadioPlasma
		GuiControl, Show, RadioArmament
		; Legend
		GuiControl, Show, RadioLunar
		GuiControl, Show, RadioPhoenix
		GuiControl, Show, RadioSolar
		GuiControl, Show, RadioHydra
		GuiControl, Show, RadioIllusion
		GuiControl, Show, RadioCosmic
		GuiControl, Show, RadioPrism
		; Myths
		GuiControl, Show, RadioAcceleration
		GuiControl, Show, RadioTelekinesis
		GuiControl, Show, RadioDragon
		GuiControl, Show, RadioArcOfTheElements
		GuiControl, Show, RadioTime
		GuiControl, Show, RadioHeavensWrath
		GuiControl, Show, RadioDestruction
		GuiControl, Show, RadioNecromancer
		GuiControl, Show, RadioDragonBlade
		GuiControl, Show, RadioSpectre
		; Secondary
		GuiControl, Show, RadioSnow
		GuiControl, Show, RadioFirework
		GuiControl, Show, RadioDemon
		GuiControl, Show, RadioDullahan
		GuiControl, Show, RadioKrampus

		;{Settings}
		GuiControl, Text, GroupBoxModeSettings, Mode Settings [AUTO-LEVEL]
		GuiControl, Show, CheckBoxTypeInChatIfMaxLevel
		GuiControl, Show, ThinHorizontalDivider16
		GuiControl, Show, ThinHorizontalDivider17
		GuiControl, Show, ThinHorizontalDivider18
		
	}	
	return
}

;{Macro Functions}
egg_PlayButton(){
	Loop
	{
		ImageSearch, X, Y, 708, 1020, 831, 1049, %A_ScriptDir%\images\play.png
		if (ErrorLevel = 0){ ;Play is seen
			SetTimer, egg_Reset, Off
			break
		}
		else if (ErrorLevel = 1){ ;Play is not seen
			continue
		}
	}
			
	Loop
	{
		ImageSearch, X, Y, 158, 926, 247, 951, %A_ScriptDir%\images\moves.png
		if (ErrorLevel = 0){
			return
		}
		else if (ErrorLevel = 1){
			Click, 768, 1033
		}
	}
}
egg_AutoLevelFourMoves(reset){
	Send, {1}
	MouseMove, 657, 1009
	Click
	Send, {2}
	MouseMove, 657, 1009
	Click
	Send, {3}
	MouseMove, 657, 1009
	Click
	Send, {4}
	MouseMove, 657, 1009
	Click
	if (reset = 1){
		SetTimer, egg_Reset, 7000
		Gosub, egg_Reset
		egg_PlayButton()
	}
	else if (reset = 0){
		return
	}
	return
}


egg_AutoLevelFiveMoves(reset){
	Send, {1}
	MouseMove, 657, 1009
	Click
	Send, {2}
	MouseMove, 657, 1009
	Click
	Send, {3}
	MouseMove, 657, 1009
	Click
	Send, {4}
	MouseMove, 657, 1009
	Click
	Send, {5}
	MouseMove, 657, 1009
	Click
	if (reset = 1){
		SetTimer, egg_Reset, 7000
		Gosub, egg_Reset
		egg_PlayButton()
	}
	else if (reset = 0){
		return
	}
	return
}

egg_AutoLevelSixMoves(reset){
	Send, {1}
	MouseMove, 657, 1009
	Click
	Send, {2}
	MouseMove, 657, 1009
	Click
	Send, {3}
	MouseMove, 657, 1009
	Click
	Send, {4}
	MouseMove, 657, 1009
	Click
	Send, {5}
	MouseMove, 657, 1009
	Click
	Send, {6}
	MouseMove, 657, 1009
	Click
	if (reset = 1){
		SetTimer, egg_Reset, 7000
		Gosub, egg_Reset
		egg_PlayButton()
	}
	else if (reset = 0){
		return
	}
	return
}

egg_AutoLevelSevenMoves(reset){
	Send, {1}
	MouseMove, 657, 1009
	Click
	Send, {2}
	MouseMove, 657, 1009
	Click
	Send, {3}
	MouseMove, 657, 1009
	Click
	Send, {4}
	MouseMove, 657, 1009
	Click
	Send, {5}
	MouseMove, 657, 1009
	Click
	Send, {6}
	MouseMove, 657, 1009
	Click
	Send, {7}
	MouseMove, 657, 1009
	Click
	if (reset = 1){
		SetTimer, egg_Reset, 7000
		Gosub, egg_Reset
		egg_PlayButton()
	}
	else if (reset = 0){
		return
	}
	return
}
egg_AutoLevelHydraMoves(){
	Send, {2}
	MouseMove, 657, 1009
	Click
	Send, {1}
	MouseMove, 657, 1009
	Click
	Send, {2}
	MouseMove, 657, 1009
	Click
	Send, {3}
	MouseMove, 657, 1009
	Click
	Send, {2}
	MouseMove, 657, 1009
	Click
	Send, {4}
	MouseMove, 657, 1009
	Click
	return
}

egg_AutoLevelDragonMoves(){
	Send, {1}
	MouseMove, 657, 1009
	Click
	Send, {2}
	MouseMove, 657, 1009
	Click
	Sleep, 400
	Send, {1}
	MouseMove, 657, 1009
	Click
	Send, {3}
	MouseMove, 657, 1009
	Click
	Send, {4}
	MouseMove, 657, 1009
	Click
	Send, {5}
	MouseMove, 657, 1009
	Click
	Send, {6}
	MouseMove, 657, 1009
	Click
	SetTimer, egg_Reset, 7000
	Gosub, egg_Reset
	egg_PlayButton()
	return
}

egg_AutoLevelTimeMoves(){
	Send, {1}
	MouseMove, 657, 1009
	Click
	Send, {2}
	MouseMove, 657, 1009
	Click
	Send, {4}
	MouseMove, 657, 1009
	Click
	return
}

egg_AutoLevelDestructionMoves(){
	Send, {1}
	MouseMove, 657, 1009
	Click
	Send, {2}
	MouseMove, 657, 1009
	Click
	Send, {3}
	MouseMove, 657, 1009
	Click
	Send, {4}
	MouseMove, 657, 1009
	Click
	Send, {6}
	MouseMove, 657, 1009
	Click
	return
}

egg_AutoLevelFireworkMoves(){
	Send, {3}
	MouseMove, 657, 1009
	Click
	Send, {1}
	MouseMove, 657, 1009
	Click
	Sleep, 300
	Send, {3}
	MouseMove, 657, 1009
	Click
	Send, {2}
	MouseMove, 657, 1009
	Click
	Sleep, 300
	Send, {3}
	MouseMove, 657, 1009
	Click
	Send, {4}
	MouseMove, 657, 1009
	Click
	Sleep, 300
	Send, {3}
	MouseMove, 657, 1009
	Click
	Send, {5}
	MouseMove, 657, 1009
	Click
	Sleep, 300
	Send, {3}
	MouseMove, 657, 1009
	Click
	SetTimer, egg_Reset, 7000
	Gosub, egg_Reset
	egg_PlayButton()
	return
}
return

;[SUBROUTINES]
;{GUI Subroutines}
egg_ButtonGrindSpins:
	egg_Submit()
	GuiControl, Disable, ButtonGrindSpins
	GuiControl, Enable, ButtonAutoSpin
	GuiControl, Enable, ButtonAutoLevel
	egg_ToggleModeGUI(1)
	mode := egg_ChangeMode(1) 
return

egg_ButtonAutoSpin:
	egg_Submit()
	GuiControl, Enable, ButtonGrindSpins
	GuiControl, Disable, ButtonAutoSpin
	GuiControl, Enable, ButtonAutoLevel
	egg_ToggleModeGUI(2)
	mode := egg_ChangeMode(2)
return

egg_ButtonAutoLevel:
	egg_Submit()
	GuiControl, Enable, ButtonGrindSpins
	GuiControl, Enable, ButtonAutoSpin
	GuiControl, Disable, ButtonAutoLevel
	egg_ToggleModeGUI(3)
	mode := egg_ChangeMode(3)
return

egg_ButtonStartRestart:
	Gui, Minimize
	WinActivate, Roblox
	egg_Submit()
	if (mode = 1){
		MsgBox, Grinding spins is currently unavailable.
	}
	else if (mode = 2){
		MsgBox, Auto-spinning is currently unavailable.
	}
	else if (mode = 3){
		Gosub, egg_AutoLevelMode
	}
return

egg_ButtonPausePlay:
	egg_Submit()
	if (TogglePause = 1){
		Pause, Toggle, 1
		TogglePause := 2
	}
	else if (TogglePause := 2){
		Pause, Toggle
		TogglePause := 1
	}
return

egg_ButtonStopReload:
	Reload
return

egg_CheckBoxAlwaysOnTop:
	egg_Submit()
	if (CheckBoxAlwaysOnTop = 1) {
	Gui +AlwaysOnTop
	} else if (CheckBoxAlwaysOnTop = 0) {
	Gui -AlwaysOnTop
	}
return

egg_CheckBoxRejoinAfter:
	egg_Submit()
	if (CheckBoxRejoinAfter = 1) {
	GuiControl, Enable, EditRejoin
	} else if (CheckBoxRejoinAfter = 0) {
	GuiControl, Disable, EditRejoin
	}
return

egg_CheckBoxSaveAfter:
	egg_Submit()
	if (CheckBoxSaveAfter = 1) {
	GuiControl, Enable, EditSave
	}
	else if (CheckBoxSaveAfter = 0) {
	GuiControl, Disable, EditSave
	}
return

;{Macro Subroutines}
; Timers
egg_Reset:
	Send, {Escape}
	Sleep, 20
	Send, {R}
	Sleep, 20
	Send, {Enter}
return

; Modes
egg_AutoLevelMode:
	ImageSearch, MovesX, MovesY, 158, 926, 247, 951, %A_ScriptDir%\images\moves.png
	if (ErrorLevel = 0){
		Goto, AutoLevelLoop
	}
	else if (ErrorLevel = 1){
		egg_PlayButton()
	}
AutoLevelLoop:		
Loop
{
	if (RadioFire = 1){
		egg_AutoLevelFourMoves(1)
	}
	else if (RadioWater = 1){
		egg_AutoLevelFiveMoves(1)
	}
	else if (RadioPoison = 1){
		egg_AutoLevelFourMoves(1)
	}
	else if (RadioSand = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioDark = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioLight = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioIce = 1){
		egg_AutoLevelFourMoves(1)
	}
	else if (RadioLightning = 1){
		egg_AutoLevelFourMoves(1)
	}
	else if (RadioWood = 1){
		egg_AutoLevelSixMoves(0)
	}
	else if (RadioEarth = 1){
		egg_AutoLevelFiveMoves(0)
	}
	else if (RadioWind = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioNova = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioExplosion = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioBlood = 1){
		egg_AutoLevelFiveMoves(0)
	}
	else if (RadioMetal = 1){
		egg_AutoLevelFourMoves(1)
	}
	else if (RadioInferno = 1){
		egg_AutoLevelFiveMoves(0)
	}
	else if (RadioTorrent = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioToxin = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioDesert = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioYin = 1){
		egg_AutoLevelFourMoves(1)
	}
	else if (RadioYang = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioPermafrost = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioBolt = 1){
		egg_AutoLevelFiveMoves(1)
	}
	else if (RadioNature = 1){
		egg_AutoLevelFiveMoves(0)
	}
	else if (RadioTerra = 1){
		egg_AutoLevelFiveMoves(1)
	}
	else if (RadioZephyr = 1){
		egg_AutoLevelFiveMoves(1)
	}
	else if (RadioSupernova = 1){
		egg_AutoLevelFourMoves(1)
	}
	else if (RadioCombustion = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioHemomancer = 1){
		egg_AutoLevelFiveMoves(0)
	}
	else if (RadioObsidian = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioMechanization = 1){
		egg_AutoLevelFiveMoves(0)
	}
	else if (RadioLava = 1){
		egg_AutoLevelFiveMoves(1)
	}
	else if (RadioSound = 1){
		egg_AutoLevelFiveMoves(1)
	}
	else if (RadioChaos = 1){
		egg_AutoLevelFiveMoves(1)
	}
	else if (RadioRadiation = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioPlasma = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioArmament = 1){
		egg_AutoLevelFourMoves(0)
	}
	else if (RadioLunar = 1){
		egg_AutoLevelSixMoves(0)
	}
	else if (RadioPhoenix = 1){
		egg_AutoLevelSixMoves(0)
	}
	else if (RadioSolar = 1){
		egg_AutoLevelFiveMoves(1)
	}
	else if (RadioHydra = 1){
		egg_AutoLevelHydraMoves()
	}
	else if (RadioIllusion = 1){
		egg_AutoLevelFiveMoves(1)
	}
	else if (RadioCosmic = 1){
		egg_AutoLevelSixMoves(0)
	}
	else if (RadioPrism = 1){
		egg_AutoLevelSixMoves(0)
	}
	else if (RadioAcceleration = 1){
		egg_AutoLevelFiveMoves(0)
	}
	else if (RadioTelekinesis = 1){
		egg_AutoLevelFiveMoves(0)
	}
	else if (RadioDragon = 1){
		egg_AutoLevelDragonMoves()
	}
	else if (RadioArcOfTheElements = 1){
		egg_AutoLevelFiveMoves(0)
	}
	else if (RadioTime = 1){
		egg_AutoLevelTimeMoves()
	}
	else if (RadioHeavensWrath = 1){
		egg_AutoLevelSevenMoves(0)
	}
	else if (RadioDestruction = 1){
		egg_AutoLevelDestructionMoves()
	}
	else if (RadioNecromancer = 1){
		egg_AutoLevelFiveMoves(0)
	}
	else if (RadioDragonBlade = 1){
		egg_AutoLevelSixMoves(0)
	}
	else if (RadioSpectre = 1){
		egg_AutoLevelSixMoves(0)
	}
	else if (RadioSnow = 1){
		egg_AutoLevelFourMoves(1)
	}
	else if (RadioFirework = 1){
		egg_AutoLevelFireworkMoves()
	}
	else if (RadioDemon = 1){
		egg_AutoLevelFiveMoves(1)
	}
	else if (RadioDullahan = 1){
		egg_AutoLevelFiveMoves(0)
	}
	else if (RadioKrampus = 1){
		egg_AutoLevelFiveMoves(1)
	}
	if (CheckBoxTypeInChatIfMaxLevel = 1){
		if (AlreadyChattedMaxLevel = 0){
			PixelSearch, FoundX, FoundY, 113, 974, 140, 1004, 0xFFFF00, 0, Fast RGB
			if (ErrorLevel = 0){
				PixelSearch, ChatX, ChatY, 78, 22, 81, 24, 0xFFFFFF, 0, Fast RGB
				if (ErrorLevel = 0){
					Sleep, 1
				}
				else if (ErrorLevel = 1){
					MouseMove, %ChatX%, %ChatY%
					Click
				}
			Send, {NumpadDiv}
			SendRaw, Max Level
			Sleep, 500
			Send, {Enter}
			AlreadyChattedMaxLevel := 1
			}
			else if (ErrorLevel = 1){
				continue
			}
		}
		else if (AlreadyChattedMaxLevel = 1){
			continue
		}
	}
}
return
;
;######################################################################################################################################################################################################
; HOTKEYS (You can touch this as long as you can remember the hotkeys you set.)
;######################################################################################################################################################################################################
;
F1:: ;Starts/Restarts the macro.
Gui, Minimize
WinActivate, Roblox
egg_Submit()
if (mode = 1){
	MsgBox, Grinding spins is currently unavailable.
}
else if (mode = 2){
	MsgBox, Auto-spinning is currently unavailable.
}
else if (mode = 3){
	Gosub, egg_AutoLevelMode
}
return

F2:: ;Pauses/Plays the macro.
egg_Submit()
if (TogglePause = 1){
	Pause, Toggle, 1
	TogglePause := 2
}
else if (TogglePause := 2){
	Pause, Toggle
	TogglePause := 1
}
return

F3:: ;Stops/Reloads the macro
Reload
return

GuiClose:
ExitApp
return
