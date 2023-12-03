; EGGcellent Macro
; Made by HoneyEggs
; Made for public use. (Enjoy! :D)
;
;######################################################################################################################################################################################################
; SETTINGS (Do not touch unless you know what you are doing)
;######################################################################################################################################################################################################
;
#Requires AutoHotkey v1.1.36.01+
#NoEnv
#MaxThreads 255
#Warn
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
DetectHiddenWindows, Off
SetWorkingDir %A_ScriptDir%
SendMode Input
#Include %A_ScriptDir%
#SingleInstance Force
SetTitleMatchMode 1
SetBatchLines -1
;
;######################################################################################################################################################################################################
; GUI (Don't touch this)
;######################################################################################################################################################################################################
;
Gui, Add, Tab3, x-1 y-3 w907 h505, Selection|Modifications|Credits
;[SELECTION]
Gui, Tab, 1
;{Grind Spins}
; Commons
Gui, Add, CheckBox, x15 y85 vCheckBoxFire1, Fire
Gui, Add, CheckBox, xp yp+25 vCheckBoxWater1, Water
Gui, Add, CheckBox, xp yp+25 vCheckBoxPoison1, Poison
Gui, Add, CheckBox, xp yp+25 vCheckBoxSand1, Sand
Gui, Add, CheckBox, xp yp+25 vCheckBoxDark1, Dark
Gui, Add, CheckBox, xp yp+25 vCheckBoxLight1, Light
Gui, Add, CheckBox, xp yp+25 vCheckBoxIce1, Ice
Gui, Add, CheckBox, xp yp+25 vCheckBoxLightning1, Lightning
Gui, Add, CheckBox, xp yp+25 vCheckBoxWood1, Wood
Gui, Add, CheckBox, xp yp+25 vCheckBoxEarth1, Earth
Gui, Add, CheckBox, xp yp+25 vCheckBoxWind1, Wind
; Uncommons
Gui, Add, CheckBox, xp yp+25 vCheckBoxNova1, Nova
Gui, Add, CheckBox, xp yp+25 vCheckBoxExplosion1, Explosion
Gui, Add, CheckBox, xp yp+25 vCheckBoxBlood1, Blood
Gui, Add, CheckBox, xp yp+25 vCheckBoxMetal1, Metal
; Ascendeds
Gui, Add, CheckBox, x165 y85 Disabled vCheckBoxInferno1, Inferno
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxTorrent1, Torrent
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxToxin1, Toxin
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxDesert1, Desert
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxYin1, Yin
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxYang1, Yang
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxPermafrost1, Peramfrost
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxBolt1, Bolt
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxNature1, Nature
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxTerra1, Terra
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxZephyr1, Zephyr
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxSupernova1, Supernova
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxCombustion1, Combustion
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxHemomancer1, Hemomancer
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxObsidian1, Obsidian
; Rares
Gui, Add, CheckBox, x315 y85 vCheckBoxMechanization1, Mechanization
Gui, Add, CheckBox, xp yp+25 vCheckBoxLava1, Lava
Gui, Add, CheckBox, xp yp+25 vCheckBoxSound1, Sound
Gui, Add, CheckBox, xp yp+25 vCheckBoxChaos1, Chaos
Gui, Add, CheckBox, xp yp+25 vCheckBoxRadiation1, Radiation
Gui, Add, CheckBox, xp yp+25 vCheckBoxPlasma1, Plasma
Gui, Add, CheckBox, xp yp+25 vCheckBoxArmament1, Armament
; Legends
Gui, Add, CheckBox, x465 y85 vCheckBoxLunar1, Lunar
Gui, Add, CheckBox, xp yp+25 vCheckBoxPhoenix1, Phoenix
Gui, Add, CheckBox, xp yp+25 vCheckBoxSolar1, Solar
Gui, Add, CheckBox, xp yp+25 vCheckBoxHydra1, Hydra
Gui, Add, CheckBox, xp yp+25 vCheckBoxIllusion1, Illusion
Gui, Add, CheckBox, xp yp+25 vCheckBoxCosmic1, Cosmic
Gui, Add, CheckBox, xp yp+25 vCheckBoxPrism1, Prism
; Myths
Gui, Add, CheckBox, x615 y85 vCheckBoxAcceleration1, Acceleration
Gui, Add, CheckBox, xp yp+25 vCheckBoxTelekinesis1, Telekinesis
Gui, Add, CheckBox, xp yp+25 vCheckBoxDragon1, Dragon
Gui, Add, CheckBox, xp yp+25 vCheckBoxArcOfTheElements1, Arc of the Elements
Gui, Add, CheckBox, xp yp+25 vCheckBoxTime1, Time
Gui, Add, CheckBox, xp yp+25 vCheckBoxHeavensWrath1, Heaven's Wrath
Gui, Add, CheckBox, xp yp+25 vCheckBoxDestruction1, Destruction
Gui, Add, CheckBox, xp yp+25 vCheckBoxNecromancer1, Necromancer
Gui, Add, CheckBox, xp yp+25 vCheckBoxDragonBlade1, Dragon Blade
Gui, Add, CheckBox, xp yp+25 vCheckBoxSpectre1, Spectre

;{Auto-Spin}
Gui, Add, CheckBox, x15 y85 vCheckBoxFire2, Fire
Gui, Add, CheckBox, xp yp+25 vCheckBoxWater2, Water
Gui, Add, CheckBox, xp yp+25 vCheckBoxPoison2, Poison
Gui, Add, CheckBox, xp yp+25 vCheckBoxSand2, Sand
Gui, Add, CheckBox, xp yp+25 vCheckBoxDark2, Dark
Gui, Add, CheckBox, xp yp+25 vCheckBoxLight2, Light
Gui, Add, CheckBox, xp yp+25 vCheckBoxIce2, Ice
Gui, Add, CheckBox, xp yp+25 vCheckBoxLightning2, Lightning
Gui, Add, CheckBox, xp yp+25 vCheckBoxWood2, Wood
Gui, Add, CheckBox, xp yp+25 vCheckBoxEarth2, Earth
Gui, Add, CheckBox, xp yp+25 vCheckBoxWind2, Wind
; Uncommons
Gui, Add, CheckBox, xp yp+25 vCheckBoxNova2, Nova
Gui, Add, CheckBox, xp yp+25 vCheckBoxExplosion2, Explosion
Gui, Add, CheckBox, xp yp+25 vCheckBoxBlood2, Blood
Gui, Add, CheckBox, xp yp+25 vCheckBoxMetal2, Metal
; Ascendeds
Gui, Add, CheckBox, x165 y85 vCheckBoxInferno2, Inferno
Gui, Add, CheckBox, x165 yp+25 vCheckBoxTorrent2, Torrent
Gui, Add, CheckBox, x165 yp+25 vCheckBoxToxin2, Toxin
Gui, Add, CheckBox, x165 yp+25 vCheckBoxDesert2, Desert
Gui, Add, CheckBox, x165 yp+25 vCheckBoxYin2, Yin
Gui, Add, CheckBox, x165 yp+25 vCheckBoxYang2, Yang
Gui, Add, CheckBox, x165 yp+25 vCheckBoxPermafrost2, Peramfrost
Gui, Add, CheckBox, x165 yp+25 vCheckBoxBolt2, Bolt
Gui, Add, CheckBox, x165 yp+25 vCheckBoxNature2, Nature
Gui, Add, CheckBox, x165 yp+25 vCheckBoxTerra2, Terra
Gui, Add, CheckBox, x165 yp+25 vCheckBoxZephyr2, Zephyr
Gui, Add, CheckBox, x165 yp+25 vCheckBoxSupernova2, Supernova
Gui, Add, CheckBox, x165 yp+25 vCheckBoxCombustion2, Combustion
Gui, Add, CheckBox, x165 yp+25 vCheckBoxHemomancer2, Hemomancer
Gui, Add, CheckBox, x165 yp+25 vCheckBoxObsidian2, Obsidian
; Rare
Gui, Add, CheckBox, x315 y85 vCheckBoxMechanization2, Mechanization
Gui, Add, CheckBox, xp yp+25 vCheckBoxLava2, Lava
Gui, Add, CheckBox, xp yp+25 vCheckBoxSound2, Sound
Gui, Add, CheckBox, xp yp+25 vCheckBoxChaos2, Chaos
Gui, Add, CheckBox, xp yp+25 vCheckBoxRadiation2, Radiation
Gui, Add, CheckBox, xp yp+25 vCheckBoxPlasma2, Plasma
Gui, Add, CheckBox, xp yp+25 vCheckBoxArmament2, Armament
; Legends
Gui, Add, CheckBox, x465 y85 vCheckBoxLunar2, Lunar
Gui, Add, CheckBox, xp yp+25 vCheckBoxPhoenix2, Phoenix
Gui, Add, CheckBox, xp yp+25 vCheckBoxSolar2, Solar
Gui, Add, CheckBox, xp yp+25 vCheckBoxHydra2, Hydra
Gui, Add, CheckBox, xp yp+25 vCheckBoxIllusion2, Illusion
Gui, Add, CheckBox, xp yp+25 vCheckBoxCosmic2, Cosmic
Gui, Add, CheckBox, xp yp+25 vCheckBoxPrism2, Prism
; Myths
Gui, Add, CheckBox, x615 y85 vCheckBoxAcceleration2, Acceleration
Gui, Add, CheckBox, xp yp+25 vCheckBoxTelekinesis2, Telekinesis
Gui, Add, CheckBox, xp yp+25 vCheckBoxDragon2, Dragon
Gui, Add, CheckBox, xp yp+25 vCheckBoxArcOfTheElements2, Arc of the Elements
Gui, Add, CheckBox, xp yp+25 vCheckBoxTime2, Time
Gui, Add, CheckBox, xp yp+25 vCheckBoxHeavensWrath2, Heaven's Wrath
Gui, Add, CheckBox, xp yp+25 vCheckBoxDestruction2, Destruction
Gui, Add, CheckBox, xp yp+25 vCheckBoxNecromancer2, Necromancer
Gui, Add, CheckBox, xp yp+25 vCheckBoxDragonBlade2, Dragon Blade
Gui, Add, CheckBox, xp yp+25 vCheckBoxSpectre2, Spectre
; Hide Auto-Spin
; Commons
GuiControl, Hide, CheckBoxFire2
GuiControl, Hide, CheckBoxWater2
GuiControl, Hide, CheckBoxPoison2
GuiControl, Hide, CheckBoxSand2
GuiControl, Hide, CheckBoxDark2
GuiControl, Hide, CheckBoxLight2
GuiControl, Hide, CheckBoxIce2
GuiControl, Hide, CheckBoxLightning2
GuiControl, Hide, CheckBoxWood2
GuiControl, Hide, CheckBoxEarth2
GuiControl, Hide, CheckBoxWind2
; Uncommons
GuiControl, Hide, CheckBoxNova2
GuiControl, Hide, CheckBoxExplosion2
GuiControl, Hide, CheckBoxBlood2
GuiControl, Hide, CheckBoxMetal2
; Ascendeds
GuiControl, Hide, CheckBoxInferno2
GuiControl, Hide, CheckBoxTorrent2
GuiControl, Hide, CheckBoxToxin2
GuiControl, Hide, CheckBoxDesert2
GuiControl, Hide, CheckBoxYin2
GuiControl, Hide, CheckBoxYang2
GuiControl, Hide, CheckBoxPermafrost2
GuiControl, Hide, CheckBoxBolt2
GuiControl, Hide, CheckBoxNature2
GuiControl, Hide, CheckBoxTerra2
GuiControl, Hide, CheckBoxZephyr2
GuiControl, Hide, CheckBoxSupernova2
GuiControl, Hide, CheckBoxCombustion2
GuiControl, Hide, CheckBoxHemomancer2
GuiControl, Hide, CheckBoxObsidian2
; Rares
GuiControl, Hide, CheckBoxMechanization2
GuiControl, Hide, CheckBoxLava2
GuiControl, Hide, CheckBoxSound2
GuiControl, Hide, CheckBoxChaos2
GuiControl, Hide, CheckBoxRadiation2
GuiControl, Hide, CheckBoxPlasma2
GuiControl, Hide, CheckBoxArmament2
; Legend
GuiControl, Hide, CheckBoxLunar2
GuiControl, Hide, CheckBoxPhoenix2
GuiControl, Hide, CheckBoxSolar2
GuiControl, Hide, CheckBoxHydra2
GuiControl, Hide, CheckBoxIllusion2
GuiControl, Hide, CheckBoxCosmic2
GuiControl, Hide, CheckBoxPrism2
; Myths
GuiControl, Hide, CheckBoxAcceleration2
GuiControl, Hide, CheckBoxTelekinesis2
GuiControl, Hide, CheckBoxDragon2
GuiControl, Hide, CheckBoxArcOfTheElements2
GuiControl, Hide, CheckBoxTime2
GuiControl, Hide, CheckBoxHeavensWrath2
GuiControl, Hide, CheckBoxDestruction2
GuiControl, Hide, CheckBoxNecromancer2
GuiControl, Hide, CheckBoxDragonBlade2
GuiControl, Hide, CheckBoxSpectre2

;{Auto-Level}
Gui, Add, Text, x5 y50 vTextElementToLevelUpWith, Element To Level Up With:
; Commons
Gui, Add, Radio, x15 y85 vRadioFire, Fire
Gui, Add, Radio, xp yp+25 vRadioWater, Water
Gui, Add, Radio, xp yp+25 vRadioPoison, Poison
Gui, Add, Radio, xp yp+25 vRadioSand, Sand
Gui, Add, Radio, xp yp+25 vRadioDark, Dark
Gui, Add, Radio, xp yp+25 vRadioLight, Light
Gui, Add, Radio, xp yp+25 vRadioIce, Ice
Gui, Add, Radio, xp yp+25 vRadioLightning, Lightning
Gui, Add, Radio, xp yp+25 vRadioWood, Wood
Gui, Add, Radio, xp yp+25 vRadioEarth, Earth
Gui, Add, Radio, xp yp+25 vRadioWind, Wind
; Uncommons
Gui, Add, Radio, xp yp+25 vRadioNova, Nova
Gui, Add, Radio, xp yp+25 vRadioExplosion, Explosion
Gui, Add, Radio, xp yp+25 vRadioBlood, Blood
Gui, Add, Radio, xp yp+25 vRadioMetal, Metal
; Ascendeds
Gui, Add, Radio, x165 y85 vRadioInferno, Inferno
Gui, Add, Radio, xp yp+25 vRadioTorrent, Torrent
Gui, Add, Radio, xp yp+25 vRadioToxin, Toxin
Gui, Add, Radio, xp yp+25 vRadioDesert, Desert
Gui, Add, Radio, xp yp+25 vRadioYin, Yin
Gui, Add, Radio, xp yp+25 vRadioYang, Yang
Gui, Add, Radio, xp yp+25 vRadioPermafrost, Peramfrost
Gui, Add, Radio, xp yp+25 vRadioBolt, Bolt
Gui, Add, Radio, xp yp+25 vRadioNature, Nature
Gui, Add, Radio, xp yp+25 vRadioTerra, Terra
Gui, Add, Radio, xp yp+25 vRadioZephyr, Zephyr
Gui, Add, Radio, xp yp+25 vRadioSupernova, Supernova
Gui, Add, Radio, xp yp+25 vRadioCombustion, Combustion
Gui, Add, Radio, xp yp+25 vRadioHemomancer, Hemomancer
Gui, Add, Radio, xp yp+25 vRadioObsidian, Obsidian
; Rares
Gui, Add, Radio, x315 y85 vRadioMechanization, Mechanization
Gui, Add, Radio, xp yp+25 vRadioLava, Lava
Gui, Add, Radio, xp yp+25 vRadioSound, Sound
Gui, Add, Radio, xp yp+25 vRadioChaos, Chaos
Gui, Add, Radio, xp yp+25 vRadioRadiation, Radiation
Gui, Add, Radio, xp yp+25 vRadioPlasma, Plasma
Gui, Add, Radio, xp yp+25 vRadioArmament, Armament
; Legends
Gui, Add, Radio, x465 y85 vRadioLunar, Lunar
Gui, Add, Radio, xp yp+25 vRadioPhoenix, Phoenix
Gui, Add, Radio, xp yp+25 vRadioSolar, Solar
Gui, Add, Radio, xp yp+25 vRadioHydra, Hydra
Gui, Add, Radio, xp yp+25 vRadioIllusion, Illusion
Gui, Add, Radio, xp yp+25 vRadioCosmic, Cosmic
Gui, Add, Radio, xp yp+25 vRadioPrism, Prism
; Myths
Gui, Add, Radio, x615 y85 vRadioAcceleration, Acceleration
Gui, Add, Radio, xp yp+25 vRadioTelekinesis, Telekinesis
Gui, Add, Radio, xp yp+25 vRadioDragon, Dragon
Gui, Add, Radio, xp yp+25 vRadioArcOfTheElements, Arc of the Elements
Gui, Add, Radio, xp yp+25 vRadioTime, Time
Gui, Add, Radio, xp yp+25 vRadioHeavensWrath, Heaven's Wrath
Gui, Add, Radio, xp yp+25 vRadioDestruction, Destruction
Gui, Add, Radio, xp yp+25 vRadioNecromancer, Necromancer
Gui, Add, Radio, xp yp+25 vRadioDragonBlade, Dragon Blade
Gui, Add, Radio, xp yp+25 vRadioSpectre, Spectre
; Secondaries
Gui, Add, Radio, x765 y85 vRadioSnow, Snow
Gui, Add, Radio, xp yp+25 vRadioFirework, Firework
Gui, Add, Radio, xp yp+25 vRadioDemon, Demon
Gui, Add, Radio, xp yp+25 vRadioDullahan, Dullahan
Gui, Add, Radio, xp yp+25 vRadioKrampus, Krampus
; Hide Auto-Level
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

GuiControl, Hide, TextElementToLevelUpWith

;[MULTI-TABBED GUI]	
Gui, Add, Button, x1 y19 w300 vButtonGrindSpins1 gegg_ButtonGrindSpins1 Disabled, Grind Spins
Gui, Add, Button, xp+300 y19 w300 vButtonAutoSpin1 gegg_ButtonAutoSpin1, Auto-Spin
Gui, Add, Button, xp+300 y19 w300 vButtonAutoLevel1 gegg_ButtonAutoLevel1, Auto-Level
Gui, Add, Text, x2 y43 w900 h2 0x7 vHorizontalDivider1
Gui, Add, Text, x5 y50 vTextElementsToStopAt, Element(s) To Stop At:
Gui, Add, GroupBox, x5 y67 w142 h393 vGroupBoxCommonsAndUncommons, Commons and Uncommons
Gui, Add, GroupBox, xp+150 yp wp hp vGroupBoxAscendeds, Ascendeds
Gui, Add, GroupBox, xp+150 yp wp hp vGroupBoxRares, Rares
Gui, Add, GroupBox, xp+150 yp wp hp vGroupBoxLegends, Legends
Gui, Add, GroupBox, xp+150 yp wp hp vGroupBoxMyths, Myths
Gui, Add, GroupBox, xp+150 yp wp hp vGroupBoxSecondaries, Secondaries
Gui, Add, Text, x2 y67 w2 h393 0x7 vVerticalDivider1
Gui, Add, Text, xp+149 yp wp hp 0x7 vVerticalDivider2
Gui, Add, Button, x1 y467 w100 vButtonStart, Start/Restart (F1)
Gui, Add, Button, xp+100 yp w100 vButtonPausePlay, Pause/Play (F2)
Gui, Add, Button, xp+100 yp w100 vButtonStopReload, Stop/Reload (F3)
Gui, Add, Text, x2 yp-3 w900 h2 0x7 vHorizontalDivider2
; Secondaries
Gui, Add, CheckBox, x765 y85 Disabled vCheckBoxSnow, Snow
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxFirework, Firework
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxDemon, Demon
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxDullahan, Dullahan
Gui, Add, CheckBox, xp yp+25 Disabled vCheckBoxKrampus, Krampus

Gui, Submit, Nohide
Gui, Show, w902 h491 Center, EGGcellent Macro v2
;
;######################################################################################################################################################################################################
; PRE-MACRO SETUP (No but seriously, don't touch this)
;######################################################################################################################################################################################################
;
mode := 1
TogglePause := 1
;
;######################################################################################################################################################################################################
; FUNCTIONS & SUBROUTINES (I cannont stress this enough. DO. NOT. TOUCH THIS.)
;######################################################################################################################################################################################################
;
;[FUNCTIONS]
;{GUI Functions}
egg_ChangeMode(modeNumber){ ; Switches the mode.
	return modeNumber	
}

egg_ToggleGUI(buttonPressed){ ; Toggles the 3 subtabs.
	if (buttonPressed = 1) {
		; Hides the "Auto-Spin" subtab.
		GuiControl, Hide, TextElementsToStopAt
		; Commons
		GuiControl, Hide, CheckBoxFire2
		GuiControl, Hide, CheckBoxWater2
		GuiControl, Hide, CheckBoxPoison2
		GuiControl, Hide, CheckBoxSand2
		GuiControl, Hide, CheckBoxDark2
		GuiControl, Hide, CheckBoxLight2
		GuiControl, Hide, CheckBoxIce2
		GuiControl, Hide, CheckBoxLightning2
		GuiControl, Hide, CheckBoxWood2
		GuiControl, Hide, CheckBoxEarth2
		GuiControl, Hide, CheckBoxWind2
		; Uncommons
		GuiControl, Hide, CheckBoxNova2
		GuiControl, Hide, CheckBoxExplosion2
		GuiControl, Hide, CheckBoxBlood2
		GuiControl, Hide, CheckBoxMetal2
		; Ascendeds
		GuiControl, Hide, CheckBoxInferno2
		GuiControl, Hide, CheckBoxTorrent2
		GuiControl, Hide, CheckBoxToxin2
		GuiControl, Hide, CheckBoxDesert2
		GuiControl, Hide, CheckBoxYin2
		GuiControl, Hide, CheckBoxYang2
		GuiControl, Hide, CheckBoxPermafrost2
		GuiControl, Hide, CheckBoxBolt2
		GuiControl, Hide, CheckBoxNature2
		GuiControl, Hide, CheckBoxTerra2
		GuiControl, Hide, CheckBoxZephyr2
		GuiControl, Hide, CheckBoxSupernova2
		GuiControl, Hide, CheckBoxCombustion2
		GuiControl, Hide, CheckBoxHemomancer2
		GuiControl, Hide, CheckBoxObsidian2
		; Rares
		GuiControl, Hide, CheckBoxMechanization2
		GuiControl, Hide, CheckBoxLava2
		GuiControl, Hide, CheckBoxSound2
		GuiControl, Hide, CheckBoxChaos2
		GuiControl, Hide, CheckBoxRadiation2
		GuiControl, Hide, CheckBoxPlasma2
		GuiControl, Hide, CheckBoxArmament2
		; Legend
		GuiControl, Hide, CheckBoxLunar2
		GuiControl, Hide, CheckBoxPhoenix2
		GuiControl, Hide, CheckBoxSolar2
		GuiControl, Hide, CheckBoxHydra2
		GuiControl, Hide, CheckBoxIllusion2
		GuiControl, Hide, CheckBoxCosmic2
		GuiControl, Hide, CheckBoxPrism2
		; Myths
		GuiControl, Hide, CheckBoxAcceleration2
		GuiControl, Hide, CheckBoxTelekinesis2
		GuiControl, Hide, CheckBoxDragon2
		GuiControl, Hide, CheckBoxArcOfTheElements2
		GuiControl, Hide, CheckBoxTime2
		GuiControl, Hide, CheckBoxHeavensWrath2
		GuiControl, Hide, CheckBoxDestruction2
		GuiControl, Hide, CheckBoxNecromancer2
		GuiControl, Hide, CheckBoxDragonBlade2
		GuiControl, Hide, CheckBoxSpectre2

		; Hides the "Auto-Level" subtab.
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


		; Shows the "Grind Spins" subtab.
		GuiControl, Show, TextElementsToStopAt
		GuiControl, Text, GroupBoxAscendeds, Ascendeds [DISABLED]
		GuiControl, Text, GroupBoxSecondaries, Secondaries [DISABLED]
		; Commons
		GuiControl, Show, CheckBoxFire1
		GuiControl, Show, CheckBoxWater1
		GuiControl, Show, CheckBoxPoison1
		GuiControl, Show, CheckBoxSand1
		GuiControl, Show, CheckBoxDark1
		GuiControl, Show, CheckBoxLight1
		GuiControl, Show, CheckBoxIce1
		GuiControl, Show, CheckBoxLightning1
		GuiControl, Show, CheckBoxWood1
		GuiControl, Show, CheckBoxEarth1
		GuiControl, Show, CheckBoxWind1
		; Uncommons
		GuiControl, Show, CheckBoxNova1
		GuiControl, Show, CheckBoxExplosion1
		GuiControl, Show, CheckBoxBlood1
		GuiControl, Show, CheckBoxMetal1
		; Ascendeds
		GuiControl, Show, CheckBoxInferno1
		GuiControl, Show, CheckBoxTorrent1
		GuiControl, Show, CheckBoxToxin1
		GuiControl, Show, CheckBoxDesert1
		GuiControl, Show, CheckBoxYin1
		GuiControl, Show, CheckBoxYang1
		GuiControl, Show, CheckBoxPermafrost1
		GuiControl, Show, CheckBoxBolt1
		GuiControl, Show, CheckBoxNature1
		GuiControl, Show, CheckBoxTerra1
		GuiControl, Show, CheckBoxZephyr1
		GuiControl, Show, CheckBoxSupernova1
		GuiControl, Show, CheckBoxCombustion1
		GuiControl, Show, CheckBoxHemomancer1
		GuiControl, Show, CheckBoxObsidian1
		; Rares
		GuiControl, Show, CheckBoxMechanization1
		GuiControl, Show, CheckBoxLava1
		GuiControl, Show, CheckBoxSound1
		GuiControl, Show, CheckBoxChaos1
		GuiControl, Show, CheckBoxRadiation1
		GuiControl, Show, CheckBoxPlasma1
		GuiControl, Show, CheckBoxArmament1
		; Legend 
		GuiControl, Show, CheckBoxLunar1
		GuiControl, Show, CheckBoxPhoenix1
		GuiControl, Show, CheckBoxSolar1
		GuiControl, Show, CheckBoxHydra1
		GuiControl, Show, CheckBoxIllusion1
		GuiControl, Show, CheckBoxCosmic1
		GuiControl, Show, CheckBoxPrism1
		; Myths		
		GuiControl, Show, CheckBoxAcceleration1
		GuiControl, Show, CheckBoxTelekinesis1
		GuiControl, Show, CheckBoxDragon1
		GuiControl, Show, CheckBoxArcOfTheElements1
		GuiControl, Show, CheckBoxTime1
		GuiControl, Show, CheckBoxHeavensWrath1
		GuiControl, Show, CheckBoxDestruction1
		GuiControl, Show, CheckBoxNecromancer1
		GuiControl, Show, CheckBoxDragonBlade1
		GuiControl, Show, CheckBoxSpectre1
		; Secondaries
		GuiControl, Show, CheckBoxSnow
		GuiControl, Show, CheckBoxFirework
		GuiControl, Show, CheckBoxDemon
		GuiControl, Show, CheckBoxDullahan
		GuiControl, Show, CheckBoxKrampus

	} else if (buttonPressed = 2) {
		; Hides the "Grind Spins" subtab.
		GuiControl, Hide, TextElementsToStopAt
		; Commons
		GuiControl, Hide, CheckBoxFire1
		GuiControl, Hide, CheckBoxWater1
		GuiControl, Hide, CheckBoxPoison1
		GuiControl, Hide, CheckBoxSand1
		GuiControl, Hide, CheckBoxDark1
		GuiControl, Hide, CheckBoxLight1
		GuiControl, Hide, CheckBoxIce1
		GuiControl, Hide, CheckBoxLightning1
		GuiControl, Hide, CheckBoxWood1
		GuiControl, Hide, CheckBoxEarth1
		GuiControl, Hide, CheckBoxWind1
		; Uncommons
		GuiControl, Hide, CheckBoxNova1
		GuiControl, Hide, CheckBoxExplosion1
		GuiControl, Hide, CheckBoxBlood1
		GuiControl, Hide, CheckBoxMetal1
		; Ascendeds
		GuiControl, Hide, CheckBoxInferno1
		GuiControl, Hide, CheckBoxTorrent1
		GuiControl, Hide, CheckBoxToxin1
		GuiControl, Hide, CheckBoxDesert1
		GuiControl, Hide, CheckBoxYin1
		GuiControl, Hide, CheckBoxYang1
		GuiControl, Hide, CheckBoxPermafrost1
		GuiControl, Hide, CheckBoxBolt1
		GuiControl, Hide, CheckBoxNature1
		GuiControl, Hide, CheckBoxTerra1
		GuiControl, Hide, CheckBoxZephyr1
		GuiControl, Hide, CheckBoxSupernova1
		GuiControl, Hide, CheckBoxCombustion1
		GuiControl, Hide, CheckBoxHemomancer1
		GuiControl, Hide, CheckBoxObsidian1
		; Rares
		GuiControl, Hide, CheckBoxMechanization1
		GuiControl, Hide, CheckBoxLava1
		GuiControl, Hide, CheckBoxSound1
		GuiControl, Hide, CheckBoxChaos1
		GuiControl, Hide, CheckBoxRadiation1
		GuiControl, Hide, CheckBoxPlasma1
		GuiControl, Hide, CheckBoxArmament1
		; Legends
		GuiControl, Hide, CheckBoxLunar1
		GuiControl, Hide, CheckBoxPhoenix1
		GuiControl, Hide, CheckBoxSolar1
		GuiControl, Hide, CheckBoxHydra1
		GuiControl, Hide, CheckBoxIllusion1
		GuiControl, Hide, CheckBoxCosmic1
		GuiControl, Hide, CheckBoxPrism1
		; Myths
		GuiControl, Hide, CheckBoxAcceleration1
		GuiControl, Hide, CheckBoxTelekinesis1
		GuiControl, Hide, CheckBoxDragon1
		GuiControl, Hide, CheckBoxArcOfTheElements1
		GuiControl, Hide, CheckBoxTime1
		GuiControl, Hide, CheckBoxHeavensWrath1
		GuiControl, Hide, CheckBoxDestruction1
		GuiControl, Hide, CheckBoxNecromancer1
		GuiControl, Hide, CheckBoxDragonBlade1
		GuiControl, Hide, CheckBoxSpectre1


		; Hides the "Auto-Level" subtab.
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


		; Shows the "Auto-Spin" subtab.
		GuiControl, Show, TextElementsToStopAt
		GuiControl, Text, GroupBoxAscendeds, Ascendeds
		GuiControl, Text, GroupBoxSecondaries, Secondaries [DISABLED]
		;Commons
		GuiControl, Show, CheckBoxFire2
		GuiControl, Show, CheckBoxWater2
		GuiControl, Show, CheckBoxPoison2
		GuiControl, Show, CheckBoxSand2
		GuiControl, Show, CheckBoxDark2
		GuiControl, Show, CheckBoxLight2
		GuiControl, Show, CheckBoxIce2
		GuiControl, Show, CheckBoxLightning2
		GuiControl, Show, CheckBoxWood2
		GuiControl, Show, CheckBoxEarth2
		GuiControl, Show, CheckBoxWind2
		; Uncommons
		GuiControl, Show, CheckBoxNova2
		GuiControl, Show, CheckBoxExplosion2
		GuiControl, Show, CheckBoxBlood2
		GuiControl, Show, CheckBoxMetal2
		; Ascendeds
		GuiControl, Show, CheckBoxInferno2
		GuiControl, Show, CheckBoxTorrent2
		GuiControl, Show, CheckBoxToxin2
		GuiControl, Show, CheckBoxDesert2
		GuiControl, Show, CheckBoxYin2
		GuiControl, Show, CheckBoxYang2
		GuiControl, Show, CheckBoxPermafrost2
		GuiControl, Show, CheckBoxBolt2
		GuiControl, Show, CheckBoxNature2
		GuiControl, Show, CheckBoxTerra2
		GuiControl, Show, CheckBoxZephyr2
		GuiControl, Show, CheckBoxSupernova2
		GuiControl, Show, CheckBoxCombustion2
		GuiControl, Show, CheckBoxHemomancer2
		GuiControl, Show, CheckBoxObsidian2
		; Rares
		GuiControl, Show, CheckBoxMechanization2
		GuiControl, Show, CheckBoxLava2
		GuiControl, Show, CheckBoxSound2
		GuiControl, Show, CheckBoxChaos2
		GuiControl, Show, CheckBoxRadiation2
		GuiControl, Show, CheckBoxPlasma2
		GuiControl, Show, CheckBoxArmament2
		; Legends
		GuiControl, Show, CheckBoxLunar2
		GuiControl, Show, CheckBoxPhoenix2
		GuiControl, Show, CheckBoxSolar2
		GuiControl, Show, CheckBoxHydra2
		GuiControl, Show, CheckBoxIllusion2
		GuiControl, Show, CheckBoxCosmic2
		GuiControl, Show, CheckBoxPrism2
		; Myths
		GuiControl, Show, CheckBoxAcceleration2
		GuiControl, Show, CheckBoxTelekinesis2
		GuiControl, Show, CheckBoxDragon2
		GuiControl, Show, CheckBoxArcOfTheElements2
		GuiControl, Show, CheckBoxTime2
		GuiControl, Show, CheckBoxHeavensWrath2
		GuiControl, Show, CheckBoxDestruction2
		GuiControl, Show, CheckBoxNecromancer2
		GuiControl, Show, CheckBoxDragonBlade2
		GuiControl, Show, CheckBoxSpectre2
		; Secondaries
		GuiControl, Show, CheckBoxSnow
		GuiControl, Show, CheckBoxFirework
		GuiControl, Show, CheckBoxDemon
		GuiControl, Show, CheckBoxDullahan
		GuiControl, Show, CheckBoxKrampus

	} else if (buttonPressed = 3){
		; Hides the "Grind Spins" subtab.
		GuiControl, Hide, TextElementsToStopAt
		; Commons
		GuiControl, Hide, CheckBoxFire1
		GuiControl, Hide, CheckBoxWater1
		GuiControl, Hide, CheckBoxPoison1
		GuiControl, Hide, CheckBoxSand1
		GuiControl, Hide, CheckBoxDark1
		GuiControl, Hide, CheckBoxLight1
		GuiControl, Hide, CheckBoxIce1
		GuiControl, Hide, CheckBoxLightning1
		GuiControl, Hide, CheckBoxWood1
		GuiControl, Hide, CheckBoxEarth1
		GuiControl, Hide, CheckBoxWind1
		; Uncommons
		GuiControl, Hide, CheckBoxNova1
		GuiControl, Hide, CheckBoxExplosion1
		GuiControl, Hide, CheckBoxBlood1
		GuiControl, Hide, CheckBoxMetal1
		; Ascendeds
		GuiControl, Hide, CheckBoxInferno1
		GuiControl, Hide, CheckBoxTorrent1
		GuiControl, Hide, CheckBoxToxin1
		GuiControl, Hide, CheckBoxDesert1
		GuiControl, Hide, CheckBoxYin1
		GuiControl, Hide, CheckBoxYang1
		GuiControl, Hide, CheckBoxPermafrost1
		GuiControl, Hide, CheckBoxBolt1
		GuiControl, Hide, CheckBoxNature1
		GuiControl, Hide, CheckBoxTerra1
		GuiControl, Hide, CheckBoxZephyr1
		GuiControl, Hide, CheckBoxSupernova1
		GuiControl, Hide, CheckBoxCombustion1
		GuiControl, Hide, CheckBoxHemomancer1
		GuiControl, Hide, CheckBoxObsidian1
		; Rares
		GuiControl, Hide, CheckBoxMechanization1
		GuiControl, Hide, CheckBoxLava1
		GuiControl, Hide, CheckBoxSound1
		GuiControl, Hide, CheckBoxChaos1
		GuiControl, Hide, CheckBoxRadiation1
		GuiControl, Hide, CheckBoxPlasma1
		GuiControl, Hide, CheckBoxArmament1
		; Legends
		GuiControl, Hide, CheckBoxLunar1
		GuiControl, Hide, CheckBoxPhoenix1
		GuiControl, Hide, CheckBoxSolar1
		GuiControl, Hide, CheckBoxHydra1
		GuiControl, Hide, CheckBoxIllusion1
		GuiControl, Hide, CheckBoxCosmic1
		GuiControl, Hide, CheckBoxPrism1
		; Myths
		GuiControl, Hide, CheckBoxAcceleration1
		GuiControl, Hide, CheckBoxTelekinesis1
		GuiControl, Hide, CheckBoxDragon1
		GuiControl, Hide, CheckBoxArcOfTheElements1
		GuiControl, Hide, CheckBoxTime1
		GuiControl, Hide, CheckBoxHeavensWrath1
		GuiControl, Hide, CheckBoxDestruction1
		GuiControl, Hide, CheckBoxNecromancer1
		GuiControl, Hide, CheckBoxDragonBlade1
		GuiControl, Hide, CheckBoxSpectre1
		; Secondaries
		GuiControl, Hide, CheckBoxSnow
		GuiControl, Hide, CheckBoxFirework
		GuiControl, Hide, CheckBoxDemon
		GuiControl, Hide, CheckBoxDullahan
		GuiControl, Hide, CheckBoxKrampus

		; Hides the "Auto-Spin" subtab.
		GuiControl, Hide, TextElementsToStopAt
		; Commons
		GuiControl, Hide, CheckBoxFire2
		GuiControl, Hide, CheckBoxWater2
		GuiControl, Hide, CheckBoxPoison2
		GuiControl, Hide, CheckBoxSand2
		GuiControl, Hide, CheckBoxDark2
		GuiControl, Hide, CheckBoxLight2
		GuiControl, Hide, CheckBoxIce2
		GuiControl, Hide, CheckBoxLightning2
		GuiControl, Hide, CheckBoxWood2
		GuiControl, Hide, CheckBoxEarth2
		GuiControl, Hide, CheckBoxWind2
		; Uncommons
		GuiControl, Hide, CheckBoxNova2
		GuiControl, Hide, CheckBoxExplosion2
		GuiControl, Hide, CheckBoxBlood2
		GuiControl, Hide, CheckBoxMetal2
		; Ascendeds
		GuiControl, Hide, CheckBoxInferno2
		GuiControl, Hide, CheckBoxTorrent2
		GuiControl, Hide, CheckBoxToxin2
		GuiControl, Hide, CheckBoxDesert2
		GuiControl, Hide, CheckBoxYin2
		GuiControl, Hide, CheckBoxYang2
		GuiControl, Hide, CheckBoxPermafrost2
		GuiControl, Hide, CheckBoxBolt2
		GuiControl, Hide, CheckBoxNature2
		GuiControl, Hide, CheckBoxTerra2
		GuiControl, Hide, CheckBoxZephyr2
		GuiControl, Hide, CheckBoxSupernova2
		GuiControl, Hide, CheckBoxCombustion2
		GuiControl, Hide, CheckBoxHemomancer2
		GuiControl, Hide, CheckBoxObsidian2
		; Rares
		GuiControl, Hide, CheckBoxMechanization2
		GuiControl, Hide, CheckBoxLava2
		GuiControl, Hide, CheckBoxSound2
		GuiControl, Hide, CheckBoxChaos2
		GuiControl, Hide, CheckBoxRadiation2
		GuiControl, Hide, CheckBoxPlasma2
		GuiControl, Hide, CheckBoxArmament2
		; Legend
		GuiControl, Hide, CheckBoxLunar2
		GuiControl, Hide, CheckBoxPhoenix2
		GuiControl, Hide, CheckBoxSolar2
		GuiControl, Hide, CheckBoxHydra2
		GuiControl, Hide, CheckBoxIllusion2
		GuiControl, Hide, CheckBoxCosmic2
		GuiControl, Hide, CheckBoxPrism2
		; Myths
		GuiControl, Hide, CheckBoxAcceleration2
		GuiControl, Hide, CheckBoxTelekinesis2
		GuiControl, Hide, CheckBoxDragon2
		GuiControl, Hide, CheckBoxArcOfTheElements2
		GuiControl, Hide, CheckBoxTime2
		GuiControl, Hide, CheckBoxHeavensWrath2
		GuiControl, Hide, CheckBoxDestruction2
		GuiControl, Hide, CheckBoxNecromancer2
		GuiControl, Hide, CheckBoxDragonBlade2
		GuiControl, Hide, CheckBoxSpectre2
		; Secondaries
		GuiControl, Hide, CheckBoxSnow
		GuiControl, Hide, CheckBoxFirework
		GuiControl, Hide, CheckBoxDemon
		GuiControl, Hide, CheckBoxDullahan
		GuiControl, Hide, CheckBoxKrampus

		; Shows the "Auto-Level" subtab.
		GuiControl, Show, TextElementToLevelUpWith
		GuiControl, Text, GroupBoxAscendeds, Ascendeds
		GuiControl, Text, GroupBoxSecondaries, Secondaries
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

		
	}	
	return
}


;[SUBROUTINES]
egg_ButtonGrindSpins1:
	GuiControl, Disable, ButtonGrindSpins1
	GuiControl, Enable, ButtonAutoSpin1
	GuiControl, Enable, ButtonAutoLevel1
	egg_ToggleGUI(1)
	mode := egg_ChangeMode(1) 
	return

egg_ButtonAutoSpin1:
	GuiControl, Enable, ButtonGrindSpins1
	GuiControl, Disable, ButtonAutoSpin1
	GuiControl, Enable, ButtonAutoLevel1
	egg_ToggleGUI(2)
	mode := egg_ChangeMode(2)
	return

egg_ButtonAutoLevel1:
	GuiControl, Enable, ButtonGrindSpins1
	GuiControl, Enable, ButtonAutoSpin1
	GuiControl, Disable, ButtonAutoLevel1
	egg_ToggleGUI(3)
	mode := egg_ChangeMode(3)
	return
;
;######################################################################################################################################################################################################
; HOTKEYS
;######################################################################################################################################################################################################
;
F1::
if (mode = 1){
	MsgBox, GS
} else if (mode = 2){
	MsgBox, AS
} else if (mode = 3){
	Msgbox, AL
}
return

F2::
if (TogglePause = 1){
	Pause, On
	TogglePause := 2
} else if (TogglePause := 2){
	Pause, Off
}

F3::
Reload
return