if (Rejoin==1)
{
SetTimer, rejoin2, 1800000
}
play2: 
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\Play.png
If (ErrorLevel = 0)
{
Click, 771, 1032 Left, Down
Click, 771, 1036 Left, Up
}
Else If (ErrorLevel)
{
Goto, j
}

j:

Send, {1}
Click, 771, 1032 Left, 1
Sleep, 100
Send, {2}
Click, 771, 1032 Left, 1
Sleep, 100
If (GEle==1)
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L1.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        
	Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L2.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L3.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L4.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L5.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L6.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L7.png
If (ErrorLevel = 0)
{
  Sleep, 10
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 10
        }
    }
Else
{
Sleep, 10
}
}

If (GEle==2)
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L1.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        
	Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L2.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L3.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L4.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L5.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L6.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L7.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L8.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L9.png
If (ErrorLevel = 0)
{
  Sleep, 10
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 10
        }
    }
Else
{
Sleep, 10
}
}

If (GEle==3)
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L1.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        
	Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L2.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L3.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L4.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L5.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L6.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L7.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L8.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L9.png
If (ErrorLevel = 0)
{
  Sleep, 10
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 10
        }
    }
Else
{
Sleep, 10
}
}

If (GEle==4)
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L1.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        
	Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L2.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L3.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L4.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L5.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L6.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L7.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L8.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L9.png
If (ErrorLevel = 0)
{
  Sleep, 10
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 10
        }
    }
Else
{
Sleep, 10
}
}

If (GEle==5)
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L1.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        
	Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L2.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L3.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L4.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L5.png
If (ErrorLevel = 0)
{
    Goto, j
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 60
            Click, 768, 1032 Left, 7
            Goto, j
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L6.png
If (ErrorLevel = 0)
{
  Sleep, 10
}
Else If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 159, 969, 160, 970, 0xF70000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, 10
    }
        Else If (ErrorLevel)
        {
            Sleep, 10
        }
    }
Else
{
Sleep, 10
}
}
if (GrindIfNoSpin==1)
{
    Click, 1150, 1035 Left
    Send, {Escape}
    Sleep, 111
    Send, {r}
    Sleep, 111
    Send, {Enter}
    Sleep, 7000
1:
    Click, 1150, 1035 Left, Down
    Sleep, 50
    Click, 1160, 1025 Left, Up
    Sleep, 500
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_ScriptDir%\Images\CE.png
    If (ErrorLevel = 0)
    {
    Goto, 1
    }
56:
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_ScriptDir%\Images\KLON.png
    If (ErrorLevel = 0)
    {
    Click, 186, 812 Left, Down
    Sleep, 50
    Click, 186, 818 Left, Up
    Sleep, 400
    Click, 186, 600 Left
    Goto, 56
    }
    Else If (ErrorLevel)
    {
    Sleep, 10
    }
    Click, 958, 690 Left, Down
    Sleep, 15
    Click, 958, 696 Left, Up
    Sleep, 1000
    Click, 958, 800 Left
    Sleep, 90
    0:
    CoordMode, Pixel, Window
    ImageSearch, FoundX, FoundY, 0, 0, 1920, 1080, %A_ScriptDir%\Images\Spinning.png
    If (ErrorLevel = 0)
    {
Goto, 0
    }
if (Grind==1)
{
Sleep, 1000
}
else
{
Sleep, 50
}
CoordMode, Pixel, Window
PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xFFFFFF, 0, Fast RGB
If (ErrorLevel = 0)
{
Click, 766, 1034 Left, 10
Goto, play2
}
Else If (ErrorLevel)
{
if (Armament==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xA30101, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Armament!
    	Sleep, 84603924420000
	}
}


if (Plasma==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xFF4193, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Plasma!
	Sleep, 84603924420000
	}
}


if (Radiation==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xCFFC00, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Radiation!
	Sleep, 84603924420000
	}
}


if (Chaos==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x28003C, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Chaos!
	Sleep, 84603924420000
	}
}


if (Sound==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x0394DD, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Sound!
    	Sleep, 84603924420000
	}
}


if (Lava==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xEE8402, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Lava!
   	Sleep, 84603924420000
	}
}


if (Mechanization==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x02DFDF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Mechanization!
   	Sleep, 84603924420000
	}
}


if (Prism==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xAA087F, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Prism!
    	Sleep, 84603924420000
	}
}


if (Illusion==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xDF95DF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Illusion!
    	Sleep, 84603924420000
	}
}


if (Lunar==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xA0EFEF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Lunar!
    	Sleep, 84603924420000
	}
}


if (Hydra==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x00CC00, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Hydra!
    	Sleep, 84603924420000
	}
}


if (Cosmic==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x1648ED, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Cosmic!
    	Sleep, 84603924420000
	}
}


if (Phoenix==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xFA5401, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Pheonix!
    	Sleep, 84603924420000
	}
}


if (Solar==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xF8D056, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Solar!
    	Sleep, 84603924420000
	}
}


if (Acceleration==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x54547C, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Acceleration!
    	Sleep, 84603924420000
	}
}


if (Destruction==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x0E0E58, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Destruction!
    	Sleep, 84603924420000
	}
}


if (Necromancer==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x4E0175, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Necromancer!
	Sleep, 84603924420000
	}
}


if (Telekinesis==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x68F974, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Telekinesis!
    	Sleep, 84603924420000
	}
}


if (Time==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x004F56, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Time!
    	Sleep, 84603924420000
	}
}


if (ArcOfTheElements==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xFF557F, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Arc of the Elements!
    	Sleep, 84603924420000
	}
}


if (HeavensWrath==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0x9A4DE7, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Heaven's Wrath!
    	Sleep, 84603924420000
	}
}


if (Dragon==1)
{
	CoordMode, Pixel, Window
	PixelSearch, FoundX, FoundY, 850, 432, 1071, 486, 0xFF2A00, 0, Fast RGB
	If (ErrorLevel = 0)
	{
	SetTimer, rejoin2, Off
	MsgBox, You got Dragon!
    	Sleep, 84603924420000
	}
}

}
Goto, play2
