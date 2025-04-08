$reg_User ='HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers'
$reg_Machine ='HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers'
$this_path = sel.path
$reg_choice = if(key.shift, reg_Machine, reg_User)
$com_mode = 'WIN95|WIN98|WIN4SP5|WIN2000|WINXPSP2|WINXPSP3|VISTARTM|VISTASP1|VISTASP2|WIN7RTM|WINSRV03SP1|WINSRV08SP1' 
$high_dpi = 'HIGHDPIAWARE|DPIUNAWARE|GDIDPISCALING'
$program_dpi = 'PERPROCESSSYSTEMDPIFORCEON|PERPROCESSSYSTEMDPIFORCEOFF'
$tip_mw = "\xE115 Hold Shift to apply Machine-wide"
//$reg_format = reg_choice, this_path, 'REGVALUE', reg.sz
$set_reg = reg.set(reg_choice, "this_path", 'REGVALUE', reg.sz)

menu(type='file' mode='single' title='Windows Compatibility Mode' image='C:\WINDOWS\explorer.exe,8')
{
    menu(title='Compatibility Mode Flags' image='C:\WINDOWS\system32\pifmgr.dll,11')
    {
        item(title='Windows 95' admin cmd=reg.set(reg_choice, this_path, 'WIN95', reg.sz) tip=tip_mw)
        //item(title='Windows 95' admin cmd=regex.replace(@set_reg, REGVALUE, "WIN95") tip=tip_mw)
        item(title='Windows 98' admin cmd=reg.set(reg_choice, this_path, 'WIN98', reg.sz) tip=tip_mw)
        item(title='Windows NT 4.0 SP5' admin cmd=reg.set(reg_choice, this_path, 'WIN4SP5', reg.sz) tip=tip_mw)
        item(title='Windows 2000' admin cmd=reg.set(reg_choice, this_path, 'WIN2000', reg.sz) tip=tip_mw)
        item(title='Windows XP SP2' admin cmd=reg.set(reg_choice, this_path, 'WINXPSP2', reg.sz) tip=tip_mw)
        item(title='Windows XP SP3' admin cmd=reg.set(reg_choice, this_path, 'WINXPSP3', reg.sz) tip=tip_mw)
        item(title='Windows Vista' admin cmd=reg.set(reg_choice, this_path, 'VISTARTM', reg.sz) tip=tip_mw)
        item(title='Windows Vista SP1' admin cmd=reg.set(reg_choice, this_path, 'VISTASP1', reg.sz) tip=tip_mw)
        item(title='Windows Vista SP2' admin cmd=reg.set(reg_choice, this_path, 'VISTASP2', reg.sz) tip=tip_mw)
        item(title='Windows 7' admin cmd=reg.set(reg_choice, this_path, 'WIN7RTM', reg.sz) tip=tip_mw)
        item(title='Windows Server 2003 SP1' admin cmd=reg.set(reg_choice, this_path, 'WINSRV03SP1', reg.sz) tip=tip_mw)
        item(title='Windows Server 2008 SP1' admin cmd=reg.set(reg_choice, this_path, 'WINSRV08SP1', reg.sz) tip=tip_mw)

    }

    menu(title='High DPI Scaling Override' mode='single' type='file' image='C:\WINDOWS\system32\shell32.dll,15')
    {
        item(title='Application' admin cmd=reg.set(reg_choice, this_path, 'HIGHDPIAWARE', reg.sz) tip=tip_mw) 
        item(title='System' admin cmd=reg.set(reg_choice, this_path, 'DPIUNAWARE', reg.sz) tip=tip_mw)
        item(title='System(Enhanced)' admin cmd=reg.set(reg_choice, this_path, 'GDIDPISCALING', reg.sz) tip=tip_mw)
    }

    menu(title='Program DPI (Fix Scaling and/or Blur)' mode='single' type='file' image='C:\WINDOWS\explorer.exe,8')
    {
        item(title='DPI when I sign into Windows' admin cmd=reg.set(reg_choice, this_path, 'PERPROCESSSYSTEMDPIFORCEOFF', reg.sz) tip=tip_mw)
        item(title='DPI when I open this program' admin cmd=reg.set(reg_choice, this_path, 'PERPROCESSSYSTEMDPIFORCEON', reg.sz) tip=tip_mw)
    }


}

   /* 
   */
/* if(reg.exists(reg_choice, this_path), reg.set(reg_choice, this_path, 'str.join(if(reg.values(reg_choice, this_path))= com_mode)', reg.sz),('~')(reg.get(reg_choice, this_path))
regex.replace(set_reg, REGVALUE, "new str")
$set_reg = "reg.set(reg_choice, this_path, REGVALUE, reg.sz)"
$set_reg = reg.set(reg_format)
item(title='Windows 95' admin cmd=regex.replace(set_reg, REGVALUE, "WIN95") tip=tip_mw)
$reg_format = reg_choice, this_path, REGVALUE, reg.sz
reg.set(reg_format, str.replace(sel, '  ', ' '))
menu(compatibilityMode)
WIN95 Windows 95
WIN98 Windows 98
WIN4SP5 Windows NT 4.0 SP5
WIN2000 Windows 2000
WINXPSP2 Windows XP SP2
WINXPSP3 Windows XP SP3
VISTARTM Vista
VISTASP1 Vista SP1
VISTASP2 Vista SP2
WIN7RTM Windows 7
WINSRV03SP1 Windows Server 2003 SP1
WINSRV08SP1 Windows Server 2008 SP1

meni(dpiScaling)

640X480 Run in 640 x 480 screen resolution
HIGHDPIAWARE Disable display scaling on high DPI settings
DPIUNAWARE System 
GDIDPISCALING System(enhanced)
PERPROCESSSYSTEMDPIFORCEON program dpi- when i open this program
PERPROCESSSYSTEMDPIFORCEOFF program dpi- when i signed into windows

DISABLEDWM Disable Desktop Composition
RUNASADMIN Run program as an administrator

DISABLETHEMES Disable Visual Themes
256COLOR Run in 256 colors
16BITCOLOR Run in 16 bits
*/
