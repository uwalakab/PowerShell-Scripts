If you have a suite of .PPK private key files for PuTTy, use this small simple PowerShell script which creates a list of the .PPK files and passes them to the "pageant.exe" executable file. After running this script, when you right-click on the "pageant" Systray icon and select "View Keys" you should see all the keys.

Note that if you have a passphrase on each .PPK file you will need to enter this for each one. If the passphrase is same for each one, then you will only need to enter it once, (security vs convenience? You decide)
