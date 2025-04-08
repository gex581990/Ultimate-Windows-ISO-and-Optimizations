menu(title='ExplorerPatcher' type='taskbar' image=icon.settings(auto, color.red)) {
    $is_ep=path.exists(path.combine(sys.prog ,'ExplorerPatcher'))
    menu(expanded=true where=is_ep image=inherit) {
        item(title='Settings' image=inherit cmd='rundll32.exe' args='@sys.dir\dxgi.dll,ZZGUI')
        item(title='Settings' image=inherit cmd='rundll32.exe' args='"@sys.prog\ExplorerPatcher\ep_gui.dll",ZZGUI' where=keys.shift())
        item(title='Restart Explorer' image=image.glyph(\uE025) cmd='rundll32.exe' args='@sys.dir\dxgi.dll,ZZRestartExplorer') }    
    item(title='ExplorerPatcher' image=icon.res(path.combine(sys.bin, 'shell32.dll'), 122) sep='before'
        where=(key.shift() or not(is_ep))
        cmd='powershell.exe' args='winget install --id=valinet.ExplorerPatcher -e')
    item(title='ExplorerPatcher Pre-Release' image=icon.res(path.combine(sys.bin, 'shell32.dll'), 122)
        where=(key.shift() or not(is_ep))
        cmd='powershell.exe' args='winget install --id=valinet.ExplorerPatcher.Prerelease -e')
}
menu(where=@(this.count == 0) type='taskbar' image=icon.settings expanded=true)
{
	import 'snippets/nss.about.nss'
	
	menu(title="Apps" image=\uE254)
	{
		item(title='Paint' image=\uE116 cmd='mspaint')
		item(title='Opera' image cmd='C:\Users\gex581990\AppData\Local\Programs\Opera GX\opera.exe')
		item(title='Calculator' image=\ue1e7 cmd='calc.exe')
		item(title=str.res('regedit.exe,-16') image cmd='regedit.exe')
	}
	menu(title=title.windows image=\uE1FB)
	{
		item(title=title.cascade_windows cmd=command.cascade_windows)
		item(title=title.Show_windows_stacked cmd=command.Show_windows_stacked)
		item(title=title.Show_windows_side_by_side cmd=command.Show_windows_side_by_side)
		sep
		item(title=title.minimize_all_windows cmd=command.minimize_all_windows)
		item(title=title.restore_all_windows cmd=command.restore_all_windows)
	}
	item(title=title.desktop image=icon.desktop cmd=command.toggle_desktop)
	item(title=title.settings image=icon.settings(auto, image.color1) cmd='ms-settings:')
	item(title=title.task_manager sep=both image=icon.task_manager cmd='taskmgr.exe')
	import 'snippets/all.power.nss'
	sep
	item(title=title.taskbar_Settings image=inherit cmd='ms-settings:taskbar')
	item(vis=key.shift() title=title.exit_explorer cmd=command.restart_explorer)

	
}

$reg_taskbarsize = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
item(title='Unlock Taskbar' type='taskbar' where=reg.get(reg_taskbarsize, 'TaskbarSizeMove')!=1 image=\uE19B cmd=reg.set(reg_taskbarsize, 'TaskbarSizeMove', 1, reg.dword))
item(title='Lock Taskbar' type='taskbar' where=reg.get(reg_taskbarsize, 'TaskbarSizeMove')==1 image=\uE19A cmd=reg.set(reg_taskbarsize, 'TaskbarSizeMove', 0, reg.dword))