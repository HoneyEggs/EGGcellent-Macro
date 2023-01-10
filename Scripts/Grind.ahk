WinActivate, Roblox
Sleep, 333
play:
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\Play.png
If (ErrorLevel = 0)
{
Click, 771, 1032 Left, Down
Click, 771, 1036 Left, Up
}
Else If (ErrorLevel)
{
Goto, e
}

e:

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
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L2.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L3.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L4.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L5.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L6.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L7.png
If (ErrorLevel = 0)
{
  Goto, C
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
Goto, C
}
}

If (GEle==2)
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L1.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L2.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L3.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L4.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L5.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L6.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L7.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L8.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L9.png
If (ErrorLevel = 0)
{
  Goto, C
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
Goto, C
}
}

If (GEle==3)
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L1.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L2.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L3.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L4.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L5.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L6.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L7.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L8.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L9.png
If (ErrorLevel = 0)
{
  Goto, C
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
Goto, C
}
}

If (GEle==4)
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L1.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L2.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L3.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L4.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L5.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L6.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L7.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L8.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L9.png
If (ErrorLevel = 0)
{
  Goto, C
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
Goto, C
}
}

If (GEle==5)
{
CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L1.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L2.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L3.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L4.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L5.png
If (ErrorLevel = 0)
{
    Goto, e
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
            Goto, e
        }
    }

CoordMode, Pixel, Window
ImageSearch, FoundX, FoundY, 91, 961, 157, 1022, %A_ScriptDir%\Images\L6.png
If (ErrorLevel = 0)
{
  Goto, C
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
Goto, C
}
}
