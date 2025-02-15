//> https://npp-user-manual.org/docs/command-prompt/

// hide already existed menus (version > 1.8.1)
// modify(find='Edit with Notepad++' vis=vis.remove)

// move already existed menus in 'Develop/editors'
// modify(find='Edit with Notepad++' menu='Develop/editors')

// remove already existed menus (in shell.nss, thanks to moudey) (version >= 1.8.33)
remove(clsid='{E6950302-61F0-4FEB-97DB-855E30D4A991}' where=this.isuwp)
remove(clsid='{B298D29A-A6ED-11DE-BA8C-A68E55D89593}' where=!this.isuwp)

// add new command
$path_npp='@sys.prog\Notepad++\Notepad++.exe'
item(title='Edit with Notepad++' mode='multiple' type='file' menu='Develop/editors'
    image=path_npp tip='Press SHIFT key to open selected file(s) without previous session'
    cmd=path_npp args='@sel(true) @if(key.shift(), '-nosession', '')')