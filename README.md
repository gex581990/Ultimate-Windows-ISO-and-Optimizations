# Scripts, Reg Files, and NTLite configs to debloat, fix, and optimize Windows....especially the headache that is Windows 11. 
*Please note that most of these optimizations are for if you have a RTX Nvidia card, alot of the registry changes are specifically for those because of different driver registry locations to GTX Nvidia cards.

## My NTLite Configs:
My configs were made with the goal of having the most debloated I could make the OS while also keeping compatibility in tact for gaming, general multi-tasking, VM's, and developing tools. Most debloated ISO's or configs are solely focused on gaming and break alot of OS features especially stuff like VM's, dev environments, or even stuff as simply as printing or using headphones. Some ISO's even break the start menu and Appx altogether making things really difficult. So I kept average useful stuff intact, somethings may be disabled but still intact just needing a setting changed. But even on high end systems my custom iso's alone make an enormous differerence even before apply all my tweaks. Especially with Windows 11. My Windows 10 config also makes an enormous difference just 11 is more bloated so my config goes even further on there

## Windows 11: 
Words cannot express how bloated Windows 11 is with useless junk, telemetry, and advertising. 11 uses SOOOOO much resources for no reason other than for Microsoft to appease sponsors, collect advertising info, and they get so deep that they want to require TPM so they feel their servers are safe as they tap into your system. TPM requirements are more for their security, not yours. I only recently switched to 11 cause I really wanted Auto-HDR, HDR calibration tool, better DirectStorage, and the full 12_2 feature set but it took so much work for me to get it to an acceptable level. They simplified stuff too much to appease tablet users and normies that only use their pc's for browsing the net. If you wanna do any serious multitasking of any kind you have to go through so many steps to do something that could have been as easy as right click or dragging a file into something like in previous versions. Even Pro is gimped with these simplifications when Pro is supposed to be a professional OS to make multi-tasking as easy as possible. It's mind boggling but I put in ALOT of work in debloating and optimizing the OS. I've made it as close to Windows 10 as possible but with all of the exclusive 11 improvements like multiple tabs in Explorer, Auto-HDR, and all that in tact. Pretty much what Windows 10 should be if Windows wasn't trying to get you to "upgrade" by locking these features to 11. With my changes I can finally say I enjoy Windows 11, especially the HDR improvements which are noticeable right away. HDR in 10 was definitely a headache.

## Anyone using Asus motherboards: 
Download your drivers from [here](https://rog-forum.asus.com/t5/hardware-build-advice/index-all-my-drivers-firmware-software-threads/m-p/827232). MoKiChU does great work debloating drivers and releasing driver updates Asus themselves are too lazy or slow to release themselves. Asus's site has some pretty old drivers, some don't even get updated and those that do are behind by like 6 months. Definitely important to have updated drivers, just always check changelogs and avoid troublesome driver updates. 

## C++ Redistributable All in One-
Almost all games and programs rely on these to work, this puts them all in one package with no bloat. Makes life simple. Important to download right after a clean install of Windows 
https://github.com/abbodi1406/vcredist

## [Chris Titus's Windows Utility](https://github.com/ChrisTitusTech/winutil):
Very useful tool especially right after a clean install of Windows. He makes it easy to download recommended apps like browsers, runtimes, dev tools, media players, or whatever you might need. Download all the .NET runtimes, just like the C++ Redistributables these are very important for programs and games to work properly. The big thing on this utility are some of the tweaks he has on there. Alot of the tweaks are included in my scripts and reg files but there are some I dont include that might be useful for you. I do recommend running my tweaks again after running his tho cause his include some registry changes that alter some of my priority settings and Ive found my settings improve a little bit better so running his tweaks then mine brings the best result. The utility doesn't need to be downloaded. You can simply paste the command below
into an elevated Powershell and the utility will load. You can definitely pay for a download of the utility tho if you wanna show your support to Chris cause he definitely does deserve it and does great work. Also check out his YouTube [Chris Titus Tech](https://www.youtube.com/@ChrisTitusTech) for useful tips and recommendations. His main Github with his repositories is [https://github.com/ChrisTitusTech](https://github.com/ChrisTitusTech)

### Command to use Chris Titus Tech Windows Utility-
```
iwr -useb https://christitus.com/win | iex
```
Thank you again to @ChrisTitusTech for your helpful Youtube channel and all the open-source work you do. They have helped me alot perfecting and balancing Windows into my perfect OS. Anyone using his tool please subscribe to his channel and check out his repositories I have linked above.

## Compatibility 
One of my goals for the perfect OS is for the best compatibility with older games, programs, and maybe even stuff from other platforms. There are some amazing tools out there like hypervisors, VM's, emulators, and wrappers to make things compatible on modern Windows that might not properly work otherwise. An amazing resource for stuff like this is https://emulation.gametechwiki.com/index.php/Main_Page but I'll share some things I think are essential for compatibility. 

### WineVDM- 
Makes your 64-bit Windows install compatible with 16-bit games/programs or even 32-bit games/programs that might use a 16-bit installer. 64-bit Windows normally are not compatible with 16-bit programs at all. 32-bit versions of Windows include NTVDM which is an ancient tool Windows made to make Windows NT compatible with DOS environments and doesn't work on 64-bit Windows. Luckily Leecher1337 ported NTVDM to 64-bit Windows "NTVDMx64" but was a work in progress and had it's issues but the work they did helped otya128 who then implimented some of the well known Wine compatibility layer (used to make Windows games/programs compatible in Linux) into the equation which then surpassed NTVDMx64. It does look like [NTVDMx64](https://github.com/leecher1337/ntvdmx64) is getting updates again tho which is great news. Both projects are great, I've just had better luck with WineVDM tho NTVDMx64 has it's own plus and minuses so could depend on the usage. Leecher1337 themselves recommends WineVDM if your focus is just running 16-bit programs, seems he is more focused on the DOS side of things which is still awesome.
https://github.com/otya128/winevdm

### Windows Subsystem for Linux (WSL2)-
One of the few things I can actually praise Microsoft for is their WSL tool. It's essentially a way to natively run Linux programs and environments while still in your Windows desktop. If you do any kind of development this is a god send. You can easily pull up a Linux terminal inside Windows Terminal (which is the newest evolution of Powershell). It works like a VM but intertwined in your Windows desktop so you don't have to switch back and forth from a vm, plus it interacts with Windows. You can even have Linux programs in your start menu and desktop.
https://learn.microsoft.com/en-us/windows/wsl/install

### Windows Subsystem for Android- 
I don't personally use this but you might find it useful. It works the same way as WSL but with Android apps and environments.
https://learn.microsoft.com/en-us/windows/android/wsa/

### DgVoodoo2-
Very useful wrapper that makes majority of older games compatible on modern pc's by translating Glide 2.11-3.10, DirectDraw 1-7, and Direct3D 2-7 into DX11 or DX12.
https://github.com/dege-diosg/dgVoodoo2

### WineD3D-
Another wrapper that uses Wine more on the api side of things to translate DirectDraw 1-7 and Direct3D 2-7 into Vulkan or OpenGL.
https://fdossena.com/?p=wined3d/index.frag

### nGlide-
yet another wrapper that focuses on just the Voodoo Glide API. Translates Glide into Vulkan or DX9.
Put this in Powershell as admin to download:
```
winget install ZeusSoftware.nGlide
```


## Recommended Apps to Download:

### NTLite (purchasing the home version is a necessity and worth every penny. Free version is very limited)-
Tool to make custom Windows ISO's to debloat, customize your OS, alter online images, and remove any reinstalled bloat from an update.
https://www.ntlite.com/shop

### Nilesoft Shell-
Make custom context menus (especially useful for replacing Windows 11's completely useless context menu and adding some flare).
https://github.com/moudey/Shell

### GoInterruptPolicy-
Reduce latency and stutter by turning on MSI mode for drivers, associating which cores drivers are gonna be using, and change priorities. Can also increase performance in some cases, especially if you are using Intel Cpu's with E-cores or AMD Cpu's with 3d cache
https://github.com/spddl/GoInterruptPolicy

### O&O Shut Up 10-
tell Windows to Shut Up, stop spying, and killing perf for no reason.
https://www.oo-software.com/en/shutup10

### NVCleanstall-
debloat Nvidia drivers to combat DPC latency, audio stutter, and lag in general.
https://www.techpowerup.com/nvcleanstall

### LatencyMon-
pretty much benchmarking how much lag is in your system, test changes, help troubleshoot, and point out problem areas.
https://www.resplendence.com/latencymon

### ExplorerPatcher-
An ABSOLUTE MUST if you are using Windows 11. This fixes that garbage start menu, context menu, and all the inconvenient
changes made in 11. My shared settings makes it exactly like Windows 10 but with the advantages of Windows 11 like tabs in File Explorer.
https://github.com/valinet/ExplorerPatcher

### Nirsoft Utilities-
There are so many useful utilities here but the ones I use most are ShellMenuView, ShellMenuNew, and ShellExView to easily make changes to the context menu. Mostly to remove some or move them to the Shift+RightClick extended context menu to reduce clutter. Can't really add programs to context menu with these sadly but that can be done with Nilesoft Shell but that also requires you to code a program in yourself (not for newbies) but that is definitely easier than doing it through the OS itself.
https://www.nirsoft.net/utils

### Sysinternals Suite-
I recommend downloading the whole suite. Everything here is useful and makes problem solving so much easier. Process Monitor and Process Explorer are must's and can help point out problem processes, malware, and test priorities easily.
https://learn.microsoft.com/en-us/sysinternals/downloads/sysinternals-suite

### Microsoft Powertoys-
Makes life so much easier on Windows. Registry Preview, Powertoys Run, Always on Top, Color Picker, Fancy Zones, and Power Rename are some of my favorites that have saved me ALOT of time doing any kind of development and multitasking in general.
https://learn.microsoft.com/en-us/windows/powertoys

### NanaZip-
By far the best free archiving program, is based on 7zip but much much better with more features, control, and much better compression.
https://github.com/M2Team/NanaZip

### Driver Store Explorer (RAPR)-
Program that makes removing and adding drivers very easy. Device Manager doesn't fully remove drivers, it only stops associating with a driver (if it even works) while continuing to store the driver and might still leave some conflict. This program likes you fully remove the driver with easy, can also show you all drivers in system and what ones are currently associated. This pointed out to me that Intel's chipset driver installer was actually installing a few unrelated drivers while leaving the ones needed not installed or not associated. 
https://github.com/lostindark/DriverStoreExplorer

### Link Shell Extension-
An awesome program that makes creating Symbolics Links, Hard Links, and Juctions as easy as possible. It add's an option to your context menu to create Symbolic Links, Hard Links, Junctions and much more. This makes it so easy to organize your files however you want together without having to move them between drives. Essentially makes shortcuts without the programs or anything know that they are shortcuts. Also makes accessing network files easier. There is alot of other uses too but convenience is a big one.
https://schinagl.priv.at/nt/hardlinkshellext/linkshellextension.html
