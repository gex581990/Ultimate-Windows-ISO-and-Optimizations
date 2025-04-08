menu(mode="multiple" title="Media" type='file|dir|back.dir|drive|back.drive|desktop' image=\uE151)
{
    menu(mode="multiple" title='MPC-HC'  menu='Media' image='C:\Program Files (x86)\K-Lite Codec Pack\MPC-HC64\mpc-hc64.exe')
    {
        modify(find="Play with MPC-HC" menu= "Media/MPC-HC")
        modify(find="Add to MPC-HC playlist" menu= "Media/MPC-HC")
    }
    
    menu(mode="multiple" title='MusicBee' menu='Media' image='C:\Program Files (x86)\MusicBee\MusicBee.exe')
    {
        modify(where=str.equals(this.name, ["Play with MusicBee", "Queue Next in MusicBee", "Queue Last in MusicBee"])
        image= 'C:\Program Files (x86)\MusicBee\MusicBee.exe' menu= "Media/Musicbee")
        
    }

    menu(mode="multiple" title='XnViewMP' menu='Media' image='@sys.prog\XnViewMP\xnviewmp.exe')
    {
        modify(find="Browse with XnViewMP" menu='Media/XnviewMP')
    }

    modify(find="MediaInfo" menu='Media')
    modify(find="Edit with Paint" menu='Media')
    modify(find="Edit with Photos" menu='Media')
}
