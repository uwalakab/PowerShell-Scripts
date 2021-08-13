If you have a suite of private keys in .PPK files for Putty's Pageant on Windows, use this script which passes a list of the .PPK files in a given directory to the "pageant.exe" executable file. After running this script and the pageant has launched, when you right-click on the "pageant" Systray icon and select "View Keys" you should see all the added keys.

## Note on when Pageant is first launched
If the passphrase is different on each private key .PPK file, then you will need to enter it for each one. 

If the passphrase is the same for each private key .PPK file, then you will only need to enter it once.
_(You can weigh up security vs. convenience here. For a production system it is not encouraged to use the same passphrase for all your private keys. If you are pushed to do so then perhaps make the passphrase complex, using say an alphanumeric password with at least 24 characters with symbols)._

On your .PPK files which have a passphrase applied, it is suggested that you use the configuration setting within PuTTy to specify the **"Private key file for authentication"** file path. For further details on this [see the PuTTy documentation here.](https://documentation.help/PuTTY/config-ssh-privkey.html#S4.22.8)

Doing the above appears to help avoid the problem mentioned [here in the PuTTy documentation.](https://documentation.help/PuTTY/errors-toomanyauth.html)
