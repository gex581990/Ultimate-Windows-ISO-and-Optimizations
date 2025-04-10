$reg_User ='HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers'
$reg_Machine ='HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers'
$this_path = sel.path
$reg_choice = if(key.shift(), reg_Machine, reg_User)
$reg_get = reg.get(reg_choice, this_path)
$reg_exists = reg.exists(reg_choice, this_path)
$com_mode = WIN95|WIN98|WIN4SP5|WIN2000|WINXPSP2|WINXPSP3|VISTARTM|VISTASP1|VISTASP2|WIN7RTM|WINSRV03SP1|WINSRV08SP1
$high_dpi = HIGHDPIAWARE|DPIUNAWARE|GDIDPISCALING
$program_dpi = PERPROCESSSYSTEMDPIFORCEON|PERPROCESSSYSTEMDPIFORCEOFF
$tip_mw = "\xE115 Hold Shift to apply Machine-wide"
//$start_tilde = !str.start(reg_get, '~')
//$set_tilde= str.set(reg_get, 1, '~')
//if(reg_exists, if((reg_get || com_mode), str.replace(reg_get, com_mode, 'WIN95'), str.join(reg_get, 'WIN95', " "))


menu(type='file' mode='single' title='Windows Compatibility Mode' image='C:\WINDOWS\explorer.exe,8')
{
    menu(title='Compatibility Mode Flags' image='C:\WINDOWS\system32\pifmgr.dll,11')
    {
        item(title='Windows 95' 
        image='<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="0 0 48 48"><linearGradient id="FDXZ8_xWfHdPN~Cc29v3Ja_mdhenbUr2yHg_gr1" x1="24.063" x2="24.063" y1="2.535" y2="28.682" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#6d7479"></stop><stop offset="1" stop-color="#323538"></stop></linearGradient><path fill="url(#FDXZ8_xWfHdPN~Cc29v3Ja_mdhenbUr2yHg_gr1)" d="M48.043,19.234L37.319,45.787c-4.959-5.909-11.097-8.18-18.064-7.192l10.676-26.854 C36.824,11.503,42.948,13.96,48.043,19.234z M28.015,15.04l1.294-3.226l-4.117,0.287l-1.331,3.35L28.015,15.04z M15.956,35.357 l-1.297,3.265l4.069-0.431l1.299-3.237L15.956,35.357z M24.703,23.297l-4.119,0.408l-1.283,3.23l4.106-0.407L24.703,23.297z M20.269,22.786l-3.828,0.335l-1.279,3.224l3.832-0.336L20.269,22.786z M23.515,14.578l1.245-3.148l-3.806,0.311l-1.258,3.171 L23.515,14.578z M11.845,34.707l-1.23,3.101l3.854-0.359l1.218-3.079L11.845,34.707z M19.741,12.803l1.07-2.713l-3.183,0.24 l-1.059,2.673L19.741,12.803z M11.735,33.093l-3.207,0.202l-1.049,2.647l3.207-0.191L11.735,33.093z M16.272,21.593l-3.187,0.201 l-1.078,2.722l3.192-0.201L16.272,21.593z M9.115,22.598l2.66-0.128l0.782-1.976l-2.661,0.128L9.115,22.598z M16.326,10.972 l0.775-1.958L14.42,9.181L13.661,11.1L16.326,10.972z M5.377,32.051l-0.819,2.071l2.633-0.072l0.842-2.128L5.377,32.051z M9.477,17.892l-1.966,0.18l-0.671,1.704l1.961-0.18L9.477,17.892z M2.96,29.643l-0.651,1.655l1.963-0.263l0.622-1.569L2.96,29.643 z M14.037,6.38l-2.059,0.335l-0.608,1.546l1.994-0.183L14.037,6.38z M6.563,16.148l-1.443,0.058l-0.448,1.127l1.443-0.058 L6.563,16.148z M0.082,28.88l1.436-0.048l0.494-1.243l-1.441,0.058L0.082,28.88z M11.069,4.729L9.681,4.753L9.25,5.902l1.412-0.048 L11.069,4.729z"></path><path fill="#f44f5a" d="M35.315,15.904c-2.289-0.505-4.649-0.64-6.816-0.506l-3.439,8.63c0.981-0.05,3.704-0.1,6.825,0.629 L35.315,15.904z"></path><path fill="#007ad9" d="M24.049,26.567l-3.279,8.228c2.365-0.187,4.698,0.011,6.92,0.565l3.227-8.233 C28.996,26.703,26.71,26.467,24.049,26.567z"></path><path fill="#fdd900" d="M29.964,36.07c2.074,0.79,4.016,1.91,5.727,3.398l3.353-8.362c-0.58-0.569-2.425-2.179-5.818-3.336 L29.964,36.07z"></path><path fill="#33c481" d="M37.634,16.562l-3.448,8.77c2.023,0.725,4.057,1.831,5.761,3.524l3.5-8.728 C41.856,18.48,39.827,17.326,37.634,16.562z"></path><polygon fill="#007ad9" points="17.514,31.434 16.185,34.782 20.258,34.378 21.601,31.029"></polygon><polygon fill="#007ad9" points="19.072,27.511 17.743,30.858 21.832,30.453 23.176,27.104"></polygon><polygon fill="#007ad9" points="14.893,27.022 13.65,30.157 17.486,29.821 18.726,26.686"></polygon><polygon fill="#007ad9" points="13.382,30.832 12.113,34.031 15.953,33.695 17.219,30.496"></polygon><polygon fill="#007ad9" points="11.539,25.696 10.465,28.406 13.664,28.204 14.733,25.495"></polygon><polygon fill="#007ad9" points="10.075,29.389 8.974,32.168 12.179,31.967 13.276,29.187"></polygon><polygon fill="#007ad9" points="7.6,26.429 10.259,26.301 11.027,24.359 8.368,24.487"></polygon><polygon fill="#007ad9" points="6.107,30.207 8.764,30.078 9.529,28.145 6.871,28.273"></polygon><polygon fill="#007ad9" points="4.488,25.756 3.827,27.438 5.766,27.261 6.433,25.578"></polygon><polygon fill="#007ad9" points="5.969,21.992 5.298,23.699 7.248,23.52 7.924,21.813"></polygon><polygon fill="#007ad9" points="3.12,21.236 4.562,21.178 5.03,20.002 3.588,20.06"></polygon><polygon fill="#007ad9" points="1.646,24.947 3.087,24.888 3.567,23.681 2.125,23.74"></polygon><g><polygon fill="#f44f5a" points="22.095,19.898 20.812,23.129 24.934,22.72 26.23,19.489"></polygon><polygon fill="#f44f5a" points="23.632,16.027 22.324,19.323 26.461,18.912 27.784,15.616"></polygon><polygon fill="#f44f5a" points="17.927,19.374 16.709,22.446 20.536,22.111 21.751,19.039"></polygon><polygon fill="#f44f5a" points="19.429,15.589 18.195,18.698 22.018,18.363 23.248,15.254"></polygon><polygon fill="#f44f5a" points="14.599,17.973 13.553,20.613 16.738,20.413 17.78,17.772"></polygon><polygon fill="#f44f5a" points="16.101,14.184 15.067,16.792 18.246,16.592 19.275,13.984"></polygon><polygon fill="#f44f5a" points="10.644,18.732 13.305,18.603 14.075,16.659 11.412,16.788"></polygon><polygon fill="#f44f5a" points="12.11,15.022 14.774,14.894 15.574,12.873 12.91,13.001"></polygon><polygon fill="#f44f5a" points="9.007,14.27 8.354,15.929 10.326,15.749 10.984,14.089"></polygon><polygon fill="#f44f5a" points="10.484,10.516 9.85,12.127 11.833,11.945 12.471,10.333"></polygon><polygon fill="#f44f5a" points="9.11,9.741 9.609,8.487 8.149,8.583 7.665,9.799"></polygon><polygon fill="#f44f5a" points="6.203,13.479 7.647,13.421 8.103,12.273 6.659,12.332"></polygon></g></svg>' 
        admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'WIN95'), str.join(reg_get, 'WIN95', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ WIN95', reg.sz)) tip=tip_mw)
        item(title='Windows 98' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'WIN98'), str.join(reg_get, 'WIN98', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ WIN98', reg.sz)) tip=tip_mw)
        item(title='Windows NT 4.0 SP5' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'WIN4SP5'), str.join(reg_get, 'WIN4SP5', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ WIN4SP5', reg.sz)) tip=tip_mw)
        item(title='Windows 2000' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'WIN2000'), str.join(reg_get, 'WIN2000', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ WIN2000', reg.sz)) tip=tip_mw)
        item(title='Windows XP SP2' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'WINXPSP2'), str.join(reg_get, 'WINXPSP2', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ WINXPSP2', reg.sz)) tip=tip_mw)
        item(title='Windows XP SP3' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'WINXPSP3'), str.join(reg_get, 'WINXPSP3', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ WINXPSP3', reg.sz)) tip=tip_mw)
        item(title='Windows Vista' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'VISTARTM'), str.join(reg_get, 'VISTARTM', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ VISTARTM', reg.sz)) tip=tip_mw)
        item(title='Windows Vista SP1' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'VISTASP1'), str.join(reg_get, 'VISTASP1', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ VISTASP1', reg.sz)) tip=tip_mw)
        item(title='Windows Vista SP2' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'VISTASP2'), str.join(reg_get, 'VISTASP2', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ VISTASP2', reg.sz)) tip=tip_mw)
        item(title='Windows 7'
        image='<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="100" height="100" viewBox="12 -12 48 48"><path fill="#03a9f4" d="M34.807,12.511l-3.488,12.077c-3.03-2.052-6.327-3.744-13.318-0.83l3.408-11.945l0.041-0.019C28.414,8.908,31.787,10.447,34.807,12.511z"></path><path fill="#ffc107" d="M36.633,13.68l-3.447,11.943c3.028,2.069,6.383,3.718,13.365,0.805l3.324-11.643C42.76,17.24,39.66,15.731,36.633,13.68z"></path><path fill="#ff5722" d="M35.387,10.337l3.441-11.964C35.8-3.688,32.442-5.344,25.454-2.424L22.011,9.59c2.775-1.153,4.969-1.682,6.806-1.666C31.604,7.942,33.563,9.102,35.387,10.337z"></path><path fill="#7cb342" d="M40.643-0.369l-3.44,12.033c3.018,2.063,6.669,3.752,13.359,0.738L54,0.415C47.021,3.317,43.665,1.688,40.643-0.369z"></path></svg>'
        admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'WIN7RTM'), str.join(reg_get, 'WIN7RTM', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ WIN7RTM', reg.sz)) tip=tip_mw)
        item(title='Windows Server 2003 SP1' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'WINSRV03SP1'), str.join(reg_get, 'WINSRV03SP1', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ WINSRV03SP1', reg.sz)) tip=tip_mw)
        item(title='Windows Server 2008 SP1' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || com_mode), str.replace(reg_get, reg_get, 'WINSRV08SP1'), str.join(reg_get, 'WINSRV08SP1', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ WINSRV08SP1', reg.sz)) tip=tip_mw)

    }

    menu(title='High DPI Scaling Override' mode='single' type='file' image='C:\WINDOWS\system32\shell32.dll,15')
    {
        item(title='Application' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || high_dpi), str.replace(reg_get, reg_get, 'HIGHDPIAWARE'), str.join(reg_get, 'HIGHDPIAWARE', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ HIGHDPIAWARE', reg.sz)) tip=tip_mw)
        item(title='System' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || high_dpi), str.replace(reg_get, reg_get, 'DPIUNAWARE'), str.join(reg_get, 'DPIUNAWARE', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ DPIUNAWARE', reg.sz)) tip=tip_mw)
        item(title='System(Enhanced)' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || high_dpi), str.replace(reg_get, reg_get, 'GDIDPISCALING'), str.join(reg_get, 'GDIDPISCALING', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ GDIDPISCALING', reg.sz)) tip=tip_mw)

    }

    menu(title='Program DPI (Fix Scaling and/or Blur)' mode='single' type='file' image='C:\WINDOWS\System32\shell32.dll,180')
    {
        item(title='DPI when I sign into Windows' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || program_dpi), str.replace(reg_get, reg_get, 'PERPROCESSSYSTEMDPIFORCEOFF'), str.join(reg_get, 'PERPROCESSSYSTEMDPIFORCEOFF', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ PERPROCESSSYSTEMDPIFORCEOFF', reg.sz)) tip=tip_mw)
        item(title='DPI when I open this program' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || program_dpi), str.replace(reg_get, reg_get, 'PERPROCESSSYSTEMDPIFORCEON'), str.join(reg_get, 'PERPROCESSSYSTEMDPIFORCEON', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ PERPROCESSSYSTEMDPIFORCEON', reg.sz)) tip=tip_mw)

    }

    menu(title='Color Mode' mode='single' type='file')
    {
        item(title='8-Bit (256) Colors' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || '16BITCOLOR'|'256COLOR'), str.replace(reg_get, reg_get, '256COLOR'), str.join(reg_get, '256COLOR', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ 256COLOR', reg.sz)) tip=tip_mw)
        item(title='16-Bit (65536) Color' admin cmd=if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || '16BITCOLOR'|'256COLOR'), str.replace(reg_get, reg_get, '16BITCOLOR'), str.join(reg_get, '16BITCOLOR', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ 16BITCOLOR', reg.sz)) tip=tip_mw)
    }

    menu(title='Additional Compat Flags' mode='single' type='file' )
    {
        item(title='Disable Fullscreen Optimizations')
        item(title='Use Legacy Display ICC Color Management' image='C:\WINDOWS\System32\colorui.dll,5')
        item(title='Run in 640 x 480 screen resolution')

    }


}



/*
if(reg_exists, reg.set(reg_choice, this_path, if((reg_get || program_dpi), str.replace(reg_get, reg_get, 'PERPROCESSSYSTEMDPIFORCEOFF'), str.join(reg_get, 'PERPROCESSSYSTEMDPIFORCEOFF', " ")) , reg.sz)
        , reg.set(reg_choice, this_path, '~ PERPROCESSSYSTEMDPIFORCEOFF', reg.sz)) tip=tip_mw)

if(str.start(reg_get, '~')


640X480 Run in 640 x 480 screen resolution


DISABLEDWM Disable Desktop Composition
RUNASADMIN Run program as an administrator

DISABLETHEMES Disable Visual Themes

TRANSFORMLEGACYCOLORMANAGED Use Legacy Display ICC Color Management
DISABLEDXMAXIMIZEDWINDOWEDMODE Disable Fullscreen Optimizations
REGISTERAPPRESTART Register This Program for Restart
*/
