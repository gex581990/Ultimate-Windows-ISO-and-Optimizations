menu(title='Environment' mode='multiple' type='file|dir|back.dir|drive|back.drive|desktop' image=\uE0A0)
{
    import 'Snippets/app.sandbox.nss'
	import 'Snippets/Compatibility.nss'
	import 'Snippets/4gb_patch.nss'

	modify(where=str.equals(this.name,["Open with DOSBox-X", "Run with DOSBox-X"]) menu= "Environment")


}