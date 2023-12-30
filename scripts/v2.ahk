/*
EGGcellent Macro v2
Made by HoneyEggs
Now made with AutoHotkey v2.0.11 (i had to rewrite this script again to make it work ;-;)
Made mainly for people who can't make a macro, can't make a good macro, or are to lazy to make a good macro. (Enjoy! :D)
*/

/*
######################################################################################################################################################################################################
SETTINGS (I highly discourage touching this.)
######################################################################################################################################################################################################
*/
#Requires AutoHotkey v2.0+ ;forces you to have v2 of autohotkey
#MaxThreads 255
#Warn ;useful while coding
#WinActivateForce
#Include %A_ScriptDir% ;includes the folder this macro is in
#SingleInstance Force
CoordMode "Mouse", "Screen"
CoordMode "Pixel", "Screen"
DetectHiddenWindows false
SendMode "Event" ;play doesnt work at all and input doesnt press buttons, so im using event
SetWorkingDir A_ScriptDir ;a mistake a previous macro creator made when they sent their script in the egg discord! this allows me to access this folder no matter whos computer it's on!
SetTitleMatchMode 2
SetControlDelay 1
SetWinDelay 0
SetKeyDelay 5
SetMouseDelay 5

/*
######################################################################################################################################################################################################
PRE-MACRO SETUP (This is VERY important. Do not touch this)
######################################################################################################################################################################################################
*/

; Checks for the correct bit interpreter.
if (A_PtrSize = 8){
	MsgBox "You need to run this macro on a 32-bit interpreter!`nIn order to do this, open the 'AutoHotkey Dash' -> Click 'Launch Settings' -> Next to 'Latest 2.x' and select '32-bit'`nOr click the button next to the URL and select 'AutoHotkey32'", "Wrong bit interpreter", 0x40010
	ExitApp
}

; Checks if the script is being ran as an admimistrator.
if (!A_IsAdmin){
	try Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"' ;trys to run the script as administrator
	if (!A_IsAdmin){ ;if it fails to do so
		MsgBox "You need to run this macro as administrator!", "Error", 0x40010 ;tell them to do it manually
		ExitApp
	}
}

; Checks if the display size is at 100%
if (A_ScreenDPI*100//96 != 100) {
	Msgbox "Your Display Scale seems to be a value other than 100`n. This means that the macro will NOT work correctly!`n`nTo change this, right click on your Desktop -> Click 'Display Settings' -> Under 'Scale & Layout', set Scale to 100`n -> Close and Restart Roblox before starting the macro.", "Error", 0x1030
	ExitApp
}

; Pre-macro variables
vMode := "AutoLevel"
vPaused := false
vAlreadyChattedMaxLevel := false ;this is the moment i realized that using boolean values is a lot easier than using 1 and 0 as placeholders for true and false

/*
######################################################################################################################################################################################################
GUI (Unless you know how to do GUI stuff, don't touch this.)
######################################################################################################################################################################################################
*/

vGui := Gui("+AlwaysOnTop","EGGcellent Macro") ;apperently im forced to add a variable to the gui command for it to work >:(
vGuiCtrl := Gui.Control
vGuiTab := vGui.AddTab3("x-2 y0 w915 h705", ["Modes","Credits"]) ;adds the two tabs
; "Modes" tab
vGuiTab.UseTab(1) ;switches to "Modes" tab
vGui.AddButton("x1 y22 w302 vButtonGrindSpins","Grind Spins [UNAVAILABLE]") ;grind spins button
vGui.AddButton("xp+302 yp wp vButtonAutoSpin","Auto-Spin [UNAVAILABLE]") ;auto-spin button
vGui.AddButton("xp+302 yp wp vButtonAutoLevel","Auto-Level") ;auto-level button
vGui.AddText("x2 y46 w904 h2 0x7 vHorizontalDivider1") ;horizontal line under the three mode buttons
vGui.AddText("x3 y51 vTextElementTo","Element To Level Up With:") ;text between horizontal divider 1 and horizontal divider 2. changes depending on the current mode
vGui.AddText("x3 y68 w902 h2 0x7 vHorizontalDivider2") ;the top of the big box
vGui.AddText("x3 y70 w2 h406 0x7 vVerticalDivider1") ;left side of the big box
vGui.AddText("xp+150 yp wp hp 0x7 vVerticalDivider2") ;seperates the commons and uncommons from the ascendeds
vGui.AddText("xp+150 yp wp hp 0x7 vVerticalDivider3") ;seperates the ascendeds from the rares
vGui.AddText("xp+150 yp wp hp 0x7 vVerticalDivider4") ;seperates the rares from the legends
vGui.AddText("xp+150 yp wp hp 0x7 vVerticalDivider5") ;seperates the legends from the myths
vGui.AddText("xp+150 yp wp hp 0x7 vVerticalDivider6") ;seperates the myths from the secondaries
vGui.AddText("xp+150 yp wp hp 0x7 vVerticalDivider7") ;right side of the big box
vGui.AddText("x3 y474 w902 h2 0x7 vHorizontalDivider3") ;the bottom of the box
vGui.AddText("x3 y479 vTextSettings","Settings:") ;between horizontal divider 3 and horizontal divider 4.
vGui.AddText("x3 y496 w902 h2 0x7 vHorizontalDivider4") ;the top of the small box
vGui.AddText("x3 y496 w2 h95 0x7 vVerticalDivider8") ;left side of the small box
vGui.AddText("xp+150 yp wp hp 0x7 vVerticalDivider9") ;seperates the gui settings from the general settings
vGui.AddText("xp+300 yp wp hp 0x7 vVerticalDivider10") ;seperates the general settings from the mode settings
vGui.AddText("xp+450 yp wp hp 0x7 vVerticalDivider11") ;right side of the small box
vGui.AddText("x3 y590 w902 h2 0x7 vHorizontalDivider5") ;the bottom of the small box
vGui.AddButton("x4 y597 w100 vButtonStart","Start (F1)") ;start button
vGui.AddButton("xp+100 yp w100 vButtonPausePlay","Pause/Play (F2)") ;pause or play button (might be useless but we'll see)
vGui.AddButton("xp+100 yp w100 vButtonReload","Reload (F3)") ;reload button
vGui.AddText("xp+104 yp-4 w1 h31 0x7 vThinVerticalDivider") ;seperates the hotkey buttons from the current mode text
vGui.AddText("xp+6 yp+2 vTextCurrentMode","Current Mode: Auto-Level (Note: This mode can also be used to grind spins without resetting your level).`n(Will be less efficient at grinding spins than the actual grind spins mode.)") ;tells the current mode and some extra info about the mode if needed
vGui.AddGroupBox("x5 y70 w148 h405 vGroupBoxCommonsAndUncommons","Commons and Uncommons") ;common and uncommon section
vGui.AddGroupBox("xp+150 yp wp hp vGroupBoxAscendeds","Ascendeds") ;ascended section
vGui.AddGroupBox("xp+150 yp wp hp vGroupBoxRares","Rares") ;rare section
vGui.AddGroupBox("xp+150 yp wp hp vGroupBoxLegends","Legends") ;legend section
vGui.AddGroupBox("xp+150 yp wp hp vGroupBoxMyths","Myths") ;myht section
vGui.AddGroupBox("xp+150 yp wp hp vGroupBoxSecondaries","Secondaries") ;secondary section
vGui.AddGroupBox("x5 y498 w148 h93 vGroupBoxGUISettings","GUI") ;GUI settings
vGui.AddGroupBox("xp+150 yp w298 hp vGroupBoxGeneralSettings","General [UNAVAILABLE]") ;General settings
vGui.AddGroupBox("xp+300 yp w448 hp vGroupBoxModeSettings","Mode Settings (Auto-Level)") ;Mode settings
vGui.AddText("x3 y84 w902 h1 0x7 vThinHorizontalDivider1") ;seperates section names from selections
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider2") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider3") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider4") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider5") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider6") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider7") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider8") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider9") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider10") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider11") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider12") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider13") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider14") ;seperates each selection
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider15") ;seperates each selection
vGui.AddText("xp y512 wp hp 0x7 vThinHorizontalDivider16") ;seperates setting names from settings
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider17") ;seperates each setting
vGui.AddText("xp yp+26 wp hp 0x7 vThinHorizontalDivider18") ;seperates each setting
; Checkboxes
vGui.AddCheckbox("x15 y91 vCheckBoxFire","Fire")
vGui.AddCheckbox("xp yp+26 vCheckBoxWater","Water")
vGui.AddCheckbox("xp yp+26 vCheckBoxPoison","Poison")
vGui.AddCheckbox("xp yp+26 vCheckBoxSand","Sand")
vGui.AddCheckbox("xp yp+26 vCheckBoxDark","Dark")
vGui.AddCheckbox("xp yp+26 vCheckBoxLight","Light")
vGui.AddCheckbox("xp yp+26 vCheckBoxIce","Ice")
vGui.AddCheckbox("xp yp+26 vCheckBoxLightning","Lightning")
vGui.AddCheckbox("xp yp+26 vCheckBoxWood","Wood")
vGui.AddCheckbox("xp yp+26 vCheckBoxEarth","Earth")
vGui.AddCheckbox("xp yp+26 vCheckBoxWind","Wind")
vGui.AddCheckbox("xp yp+26 vCheckBoxNova","Nova")
vGui.AddCheckbox("xp yp+26 vCheckBoxExplosion","Explosion")
vGui.AddCheckbox("xp yp+26 vCheckBoxBlood","Blood")
vGui.AddCheckbox("xp yp+26 vCheckBoxMetal","Metal")
vGui.AddCheckbox("x165 y91 vCheckBoxInferno","Inferno")
vGui.AddCheckbox("xp yp+26 vCheckBoxTorrent","Torrent")
vGui.AddCheckbox("xp yp+26 vCheckBoxToxin","Toxin")
vGui.AddCheckbox("xp yp+26 vCheckBoxDesert","Desert")
vGui.AddCheckbox("xp yp+26 vCheckBoxYin","Yin")
vGui.AddCheckbox("xp yp+26 vCheckBoxYang","Yang")
vGui.AddCheckbox("xp yp+26 vCheckBoxPermafrost","Permafrost")
vGui.AddCheckbox("xp yp+26 vCheckBoxBolt","Bolt")
vGui.AddCheckbox("xp yp+26 vCheckBoxNature","Nature")
vGui.AddCheckbox("xp yp+26 vCheckBoxTerra","Terra")
vGui.AddCheckbox("xp yp+26 vCheckBoxZephyr","Zephyr")
vGui.AddCheckbox("xp yp+26 vCheckBoxSupernova","Supernova")
vGui.AddCheckbox("xp yp+26 vCheckBoxCombustion","Combustion")
vGui.AddCheckbox("xp yp+26 vCheckBoxHemomancer","Hemomancer")
vGui.AddCheckbox("xp yp+26 vCheckBoxObsidian","Obsidian")
vGui.AddCheckbox("x315 y91 vCheckBoxMechanization","Mechanization")
vGui.AddCheckbox("xp yp+26 vCheckBoxLava","Lava")
vGui.Show("w908 h625 Center") ;shows the gui. the most important command in this entire section

