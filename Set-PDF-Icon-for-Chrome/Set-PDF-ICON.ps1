## Run the script as Administrator, or add the following Reg Key settings with the following Windows advanced permissions for the current user [Set Value, Create Subkey]
## On a personal system you can assign permissions to the single Current User. This is deemed more secure as the script can then run in the "Current User" context and only that single user will have access to the one part of the registry required to make the setting.

New-ItemProperty -Path HKLM:\SOFTWARE\Classes\ChromePDF\DefaultIcon -Name "(default)" -PropertyType "String" -Value '"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe",11' -Force

## [HKEY_CLASSES_ROOT\ChromePDF\DefaultIcon]
## @="\"C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe\",11"

## Refresh Shell ICONS (i.e. SHChangeNotify ) - https://learn.microsoft.com/en-us/windows/win32/api/shlobj_core/nf-shlobj_core-shchangenotify
$code = @'
  [System.Runtime.InteropServices.DllImport("Shell32.dll")] 
  private static extern int SHChangeNotify(int eventId, int flags, IntPtr item1, IntPtr item2);

  public static void Refresh()  {
      SHChangeNotify(0x8000000, 0x1000, IntPtr.Zero, IntPtr.Zero);    
  }
'@
Add-Type -MemberDefinition $code -Namespace WinAPI -Name Explorer 
[WinAPI.Explorer]::Refresh()
