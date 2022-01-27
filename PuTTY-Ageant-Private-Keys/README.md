If you have a suite of private keys in .PPK files for Putty's Pageant on Windows, use this script which passes a list of the .PPK files in a given directory to the "pageant.exe" executable file. After running this script and the pageant has launched, when you right-click on the "pageant" Systray icon and select "View Keys" you should see all the added keys.

## Note on when Pageant is first launched
If the passphrase is different on each private key .PPK file, then you will need to enter it for each one. 

If the passphrase is the same for each private key .PPK file, then you will only need to enter it once.
You can weigh up security vs. convenience here. For a production system it is not encouraged to use the same passphrase for all your private keys. If you are pushed to do so then perhaps make the passphrase complex:

- Use an alphanumeric password including symbols.
- Passphrase should be at least 24 characters in length.

On your .PPK files which have a passphrase applied, it is suggested that within PuTTy you set the **"Private key file for authentication"** file path for the specific session that will use the given private key. For further details on this [see the PuTTy documentation here.](https://documentation.help/PuTTY/config-ssh-privkey.html#S4.22.8)

Doing the above helps avoid the problem mentioned [here in the PuTTy documentation](https://documentation.help/PuTTY/errors-toomanyauth.html) seeing the message _‘Server sent disconnect message type 2 (protocol error): "Too many authentication failures for root"’_ when opening a session.
