## Run the script as Administrator, or (less secure) set the following Reg Key with  the following Windows advanced permissions for the current user [Set Value, Create Subkey]

New-ItemProperty -Path HKLM:\SOFTWARE\Classes\ChromePDF\DefaultIcon -Name "(default)" -PropertyType "String" -Value '"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe",11' -Force

## [HKEY_CLASSES_ROOT\ChromePDF\DefaultIcon]
## @="\"C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe\",11"

## Use the following command to refresh Icons instead of using C Code
Start-Process ie4uinit.exe -ArgumentList "-show"
