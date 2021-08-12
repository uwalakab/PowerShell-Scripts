If you have a suite of private keys in .PPK files for Putty's Pageant on Windows, use this script which passess a list of the .PPK files in a given directory to the "pageant.exe" executable file. After running this script and the pageant has launched, when you right-click on the "pageant" Systray icon and select "View Keys" you should see all the added keys.

## Note on when Pageant is first launched
If the passphrase is different on each private key .PPK file, then you will need to enter it for each one. 

If the passphrase is the same for each private key .PPK file, then you will only need to enter it once.
_(You can weigh up security vs. convenience here. For a production system it is not encouraged to use the same passphrase for all your private keys. If you are pushed to do so then perhaps make the passphrase complex, using say an alphanumeric password with at least 24 characters with symbols)._

On your .PPK files which have a passphrase applied, it is suggested that you also apply them to the **specific session Auth details** stored in PuTTy.
[See PuTTy documentation here.](https://documentation.help/PuTTY/config-ssh-privkey.html#S4.22.8)

This may help avoid encountering the type of problem mentioned [in the PuTTy documentation here.](https://documentation.help/PuTTY/errors-toomanyauth.html)
