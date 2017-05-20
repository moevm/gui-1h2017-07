; -- 64Bit.iss --
; Demonstrates installation of a program built for the x64 (a.k.a. AMD64)
; architecture.
; To successfully run this installation and the program it installs,
; you must have a "x64" edition of Windows.

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName=SUPER TETRIS
AppVersion=1.2
DefaultDirName={pf}\SUPER TETRIS
DefaultGroupName=SUPER TETRIS
UninstallDisplayIcon={app}\QtTetris.exe
Compression=lzma2
SolidCompression=yes
OutputDir=C:\Users\nikol\Desktop\Tetris\
; "ArchitecturesAllowed=x64" specifies that Setup cannot run on
; anything but x64.
ArchitecturesAllowed=x64
; "ArchitecturesInstallIn64BitMode=x64" requests that the install be
; done in "64-bit mode" on x64, meaning it should use the native
; 64-bit Program Files directory and the 64-bit view of the registry.
ArchitecturesInstallIn64BitMode=x64

[Files]
Source: "C:\Users\nikol\Desktop\Tetris\QtTetris.exe"; DestDir: "{app}"; DestName: "QtTetris.exe"
Source: "C:\Users\nikol\Desktop\Tetris\libgcc_s_dw2-1.dll"; DestDir: "{app}"
Source: "C:\Users\nikol\Desktop\Tetris\libstdc++-6.dll"; DestDir: "{app}"
Source: "C:\Users\nikol\Desktop\Tetris\libwinpthread-1.dll"; DestDir: "{app}"
Source: "C:\Users\nikol\Desktop\Tetris\Qt5Core.dll"; DestDir: "{app}"
Source: "C:\Users\nikol\Desktop\Tetris\Qt5Gui.dll"; DestDir: "{app}"
Source: "C:\Users\nikol\Desktop\Tetris\Qt5Widgets.dll"; DestDir: "{app}"

Source: "C:\Users\nikol\Desktop\Tetris\qminimal.dll"; DestDir: "{app}\platforms"
Source: "C:\Users\nikol\Desktop\Tetris\qoffscreen.dll"; DestDir: "{app}\platforms"
Source: "C:\Users\nikol\Desktop\Tetris\qwindows.dll"; DestDir: "{app}\platforms"

;Source: "Readme.txt"; DestDir: "{app}"; Flags: isreadme

[Icons]
Name: "{group}\SUPER TETRIS"; Filename: "{app}\QtTetris.exe"
