﻿C:
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_ScriptDir%\Images\Ingame.png
If (ErrorLevel = 0)
    {
    Send, {Escape}
    Sleep, 111
    Send, {r}
    Sleep, 111
    Send, {Enter}
    Goto, C
    }
    Else
    {
    Goto, d
    }
    d:
    Click, 1155, 1030, 0
    Sleep, 500
    Click, 1150, 1035 Left, Down
    Sleep, 50
    Click, 1160, 1025 Left, Up
    Sleep, 50
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_ScriptDir%\Images\CE.png
    If (ErrorLevel = 0)
    {
    Goto, d
    }
if (Grind==1)
{
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_ScriptDir%\Images\KLON.png
    If (ErrorLevel = 0)
    {
    Click, 186, 812 Left, Down
    Sleep, 50
    Click, 186, 818 Left, Up
    Sleep, 400
    }
    Else If (ErrorLevel)
    {
    Goto, a
    }
}

    a:
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_ScriptDir%\Images\nospin.png
    If (ErrorLevel = 0)
    {
Sleep, 84603924420000
    }
    Click, 958, 690 Left, Down
    Sleep, 15
    Click, 958, 696 Left, Up
    Sleep, 50
    g:
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_ScriptDir%\Images\ISOFF.png
    If (ErrorLevel = 0)
    {
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_ScriptDir%\Images\Spinning.png
    If (ErrorLevel = 0)
    {
Goto, g
    }
Else
{
Goto, h
}
}
h:
if (Armament==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xA30101, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Plasma==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xFF4193, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	Sleep, 84603924420000
	}
}


if (Radiation==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xCFFC00, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	Sleep, 84603924420000
	}
}


if (Chaos==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x3A0158, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	Sleep, 84603924420000
	}
}


if (Sound==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x0394DD, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Lava==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xEF8400, 0, Fast RGB
	If (ErrorLevel = 0)
	{
   	Sleep, 84603924420000
	}
}


if (Mechanization==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x02DFDF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
   	Sleep, 84603924420000
	}
}


if (Prism==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xAA087F, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Illusion==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xF9A7F9, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Lunar==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xA0EFEF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Hydra==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x01EB01, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Cosmic==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x1648ED, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Phoenix==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xFA5401, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Solar==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xF8D056, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Acceleration==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x3E3E52, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Destruction==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x0E0E58, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Necromancer==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x350050, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    Sleep, 84603924420000
	}
}


if (Telekinesis==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x68F974, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Time==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x004F56, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (ArcOfTheElements==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xFF557F, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (HeavensWrath==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x9A4DE7, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}


if (Dragon==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xFF2A00, 0, Fast RGB
	If (ErrorLevel = 0)
	{
    	Sleep, 84603924420000
	}
}

 
if (Grind==1)
{
	Click, 766, 1034 Left, 10
}

if(SpinS==1)
{
	Goto, a
}
Goto, start