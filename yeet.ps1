#VERSION: 2.1.0
#AUTHOR: Carbon16
#Copyright: YES
#Git: https://github.com/Carbon16

$b = 1
$a = 1
DO {
if (Test-Connection -ComputerName 'google.com' -Quiet)
    { 
        $result = "Server01 is up";
    }
else
    { 
        $b = 0
        [console]::beep(1000,500)
        [reflection.assembly]::loadwithpartialname("System.Windows.Forms")
        [reflection.assembly]::loadwithpartialname("System.Drawing")
        $notify = new-object system.windows.forms.notifyicon
        $notify.icon = [System.Drawing.SystemIcons]::Information
        $notify.visible = $true
        $notify.showballoontip(10,"FATAL ERROR","Sanchez has struck again, reconnect fool.",[system.windows.forms.tooltipicon]::None)
        DO {
            if (Test-Connection -ComputerName 'google.com' -Quiet)
                {
                    $b = 1
                }
            else
                {
                    $b = 0
                }
        } While ($b -eq 0)
    }
} While ($a = 1)

