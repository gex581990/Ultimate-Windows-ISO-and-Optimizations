menu(title='Tools' mode="multiple" image=\uE0F6)
{
	import 'Snippets\commands.renamer.nss'
	import 'Snippets\nss.icons.win.nss'
	menu(type='*' title='Segoe Icons' image=icon.search)
	{
		import 'Snippets\nss.icons.segoe.nss'
	}
	import 'app.FolderPainter1.nss'
	modify(find="File Converter" menu='Tools')
    import 'Powertoys.nss'
}