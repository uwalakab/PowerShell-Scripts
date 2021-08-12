If you have a suite of private keys in .PPK files for Putty's Pageant on Windows, use this script which passess a list of the .PPK files in a given directory to the "pageant.exe" executable file. After running this script and pageant has launched, when you right-click on the "pageant" Systray icon and select "View Keys" you should see all the added keys.

## Note on when Pageant is first launched
If the passphrase is different on each private key (.PPK file) you will need to enter this for each one. 

If the passphrase is same for each private key, then you will only need to enter it once, _(security vs. convenience?)_

I also suggest on your .PPK files that you apply a password on them and also apply them to the specific session Auth details stored in PuTTy.
[See PuTTy documentation here](https://documentation.help/PuTTY/config-ssh-privkey.html#S4.22.8)
