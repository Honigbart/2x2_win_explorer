param(
  [string]$Folder1 = "F:\AppDev\tradebart",
  [string]$Folder2 = "F:\AppDev\kanbart",
  [string]$Folder3 = "C:\Users\wojor\Downloads",
  [string]$Folder4 = "C:\Users\wojor",
  [int]$DelayMs = 1000,
  [int]$DelayMs2 = 500
)

Add-Type -AssemblyName System.Windows.Forms

$code = @"
using System.Runtime.InteropServices;
public class Keybd {
    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, int dwExtraInfo);
}
"@
Add-Type -TypeDefinition $code

# Definitionen
$VK_LWIN  = 0x5B
$VK_LEFT  = 0x25
$VK_UP    = 0x26
$VK_RIGHT = 0x27
$VK_DOWN  = 0x28
$KEYEVENTF_KEYUP = 0x02

Start-Process explorer.exe $Folder1 | Out-Null
Start-Sleep -Milliseconds $DelayMs

[Keybd]::keybd_event($VK_LWIN, 0, 0, 0)
[Keybd]::keybd_event($VK_LEFT, 0, 0, 0)
[Keybd]::keybd_event($VK_LEFT, 0, $KEYEVENTF_KEYUP, 0)
[Keybd]::keybd_event($VK_LWIN, 0, $KEYEVENTF_KEYUP, 0)
Start-Sleep -Milliseconds $DelayMs2
[System.Windows.Forms.SendKeys]::SendWait("{ESC}")

[Keybd]::keybd_event($VK_LWIN, 0, 0, 0)
[Keybd]::keybd_event($VK_UP, 0, 0, 0)
[Keybd]::keybd_event($VK_UP, 0, $KEYEVENTF_KEYUP, 0)
[Keybd]::keybd_event($VK_LWIN, 0, $KEYEVENTF_KEYUP, 0)
Start-Sleep -Milliseconds $DelayMs2
[System.Windows.Forms.SendKeys]::SendWait("{ESC}")


Start-Process explorer.exe $Folder2 | Out-Null
Start-Sleep -Milliseconds $DelayMs

[Keybd]::keybd_event($VK_LWIN, 0, 0, 0)
[Keybd]::keybd_event($VK_LEFT, 0, 0, 0)
[Keybd]::keybd_event($VK_LEFT, 0, $KEYEVENTF_KEYUP, 0)
[Keybd]::keybd_event($VK_LWIN, 0, $KEYEVENTF_KEYUP, 0)
Start-Sleep -Milliseconds $DelayMs2
[System.Windows.Forms.SendKeys]::SendWait("{ESC}")

[Keybd]::keybd_event($VK_LWIN, 0, 0, 0)
[Keybd]::keybd_event($VK_DOWN, 0, 0, 0)
[Keybd]::keybd_event($VK_DOWN, 0, $KEYEVENTF_KEYUP, 0)
[Keybd]::keybd_event($VK_LWIN, 0, $KEYEVENTF_KEYUP, 0)
Start-Sleep -Milliseconds $DelayMs2
[System.Windows.Forms.SendKeys]::SendWait("{ESC}")


Start-Process explorer.exe $Folder3 | Out-Null
Start-Sleep -Milliseconds $DelayMs

[Keybd]::keybd_event($VK_LWIN, 0, 0, 0)
[Keybd]::keybd_event($VK_RIGHT, 0, 0, 0)
[Keybd]::keybd_event($VK_RIGHT, 0, $KEYEVENTF_KEYUP, 0)
[Keybd]::keybd_event($VK_LWIN, 0, $KEYEVENTF_KEYUP, 0)
Start-Sleep -Milliseconds $DelayMs2
[System.Windows.Forms.SendKeys]::SendWait("{ESC}")

[Keybd]::keybd_event($VK_LWIN, 0, 0, 0)
[Keybd]::keybd_event($VK_UP, 0, 0, 0)
[Keybd]::keybd_event($VK_UP, 0, $KEYEVENTF_KEYUP, 0)
[Keybd]::keybd_event($VK_LWIN, 0, $KEYEVENTF_KEYUP, 0)
Start-Sleep -Milliseconds $DelayMs2
[System.Windows.Forms.SendKeys]::SendWait("{ESC}")


Start-Process explorer.exe $Folder4 | Out-Null
Start-Sleep -Milliseconds $DelayMs

[Keybd]::keybd_event($VK_LWIN, 0, 0, 0)
[Keybd]::keybd_event($VK_RIGHT, 0, 0, 0)
[Keybd]::keybd_event($VK_RIGHT, 0, $KEYEVENTF_KEYUP, 0)
[Keybd]::keybd_event($VK_LWIN, 0, $KEYEVENTF_KEYUP, 0)
Start-Sleep -Milliseconds $DelayMs2
[System.Windows.Forms.SendKeys]::SendWait("{ESC}")

[Keybd]::keybd_event($VK_LWIN, 0, 0, 0)
[Keybd]::keybd_event($VK_DOWN, 0, 0, 0)
[Keybd]::keybd_event($VK_DOWN, 0, $KEYEVENTF_KEYUP, 0)
[Keybd]::keybd_event($VK_LWIN, 0, $KEYEVENTF_KEYUP, 0)
Start-Sleep -Milliseconds $DelayMs2
[System.Windows.Forms.SendKeys]::SendWait("{ESC}")