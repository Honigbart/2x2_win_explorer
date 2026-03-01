# 2x2_win_explorer
PowerShell script to open up a 2x2 explorer grid with predefines paths on windows 10/11

## Details
This script defines 4 paths that will be opened in the windows explorer, arranged in a 2x2 grid.
The gris is accomplished by mimicing windows inputs (WIN + LEFT, ESC, WIN + UP, ESC, etc.). This technique makes sure the 4 windows are in a group.

## Limitations
In my tests it only worked when all other windows are minimized when you execute the script.
Sometimes it can fail, then you have to increase the delay params a little.

If someone knows a better, functioning way, that also adds all four to a group, let me know

## Disclaimer
Use at your own risk.
