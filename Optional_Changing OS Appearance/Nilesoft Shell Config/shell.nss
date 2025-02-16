settings
{
	priority=1
	exclude.where = !process.is_explorer
	showdelay = 200
	// Options to allow modification of system items
	modify.remove.duplicate=1
	tip.enabled=true
}

import 'imports/theme.nss'
import 'imports/images.nss'

import 'imports/modify.nss'
import 'imports/bar.scroll.nss'
import 'imports/app.WinRAR.nss'
import 'imports/file-manage.nss'

menu(mode="multiple" title="Pin/Unpin" image=icon.pin)
{
}

import 'imports/all.terminal.nss'
import 'imports/develop.nss'
import 'imports/notepad.nss'
import 'imports/Powertoys.nss'
import 'imports/media.nss'
import 'imports/Environment.nss'
import 'imports/goto.nss'
import 'imports/taskbar.nss'
import 'imports/tools.nss'

menu(mode="multiple" title=title.more_options image=icon.more_options)
{
}


