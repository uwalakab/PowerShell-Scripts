If you have a suite of private keys in .PPK files for Putty's Pageant on Windows, use this script which passes a list of the .PPK files in a given directory to the "pageant.exe" executable file. After running this script and the pageant has launched, when you right-click on the "pageant" Systray icon and select "View Keys" you should see all the added keys.

_(Refer to [this link from Microsoft regarding execution policies for PowerShell scripts](https://go.microsoft.com/fwlink/?LinkID=135170). Initally you can set your execution policy as "RemoteSigned" with the scope of "CurrentUser")_

## Note on when Pageant is first launched
If the passphrase is different on each private key .PPK file, then you will need to enter it once for each one, each time Pageant is launched by the script. 

If the passphrase is the same for each private key .PPK file, then you will only need to enter it once.
You can weigh up security vs. convenience here. For a production system it is not encouraged to use the same passphrase for all your private keys.
If you find you need to do this, then it is suggested to make the passphrase complex. For example, create an alphanumeric passphrase using symbols, upper and lower case with 24 characters or more.

On your .PPK files that have a passphrase applied, within PuTTy you can set the **"Private key file for authentication"** file path for the specific session that will use the given private key. For further details on this [see the PuTTy documentation here.](https://documentation.help/PuTTY/config-ssh-privkey.html#S4.22.8)

Doing the above helps avoid the problem mentioned [here in the PuTTy documentation](https://documentation.help/PuTTY/errors-toomanyauth.html) seeing the message _‘Server sent disconnect message type 2 (protocol error): "Too many authentication failures for root"’_ when opening a session.
