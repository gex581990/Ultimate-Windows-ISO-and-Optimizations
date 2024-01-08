Scripts, Reg Files, and NTLite configs to debloat, fix, and optimize Windows....especially the headache that is Windows 11. Please note that most of these optimizations are for if you have a RTX Nvidia card, alot of the registry changes are specifically for those because of different driver registry locations to GTX Nvidia cards.

Anyone using Asus motherboards should download their drivers from [here](https://rog-forum.asus.com/t5/hardware-build-advice/index-all-my-drivers-firmware-software-threads/m-p/827232). MoKiChU does great work debloating drivers and releasing driver updates Asus themselves are too lazy or slow to release themselves. Asus's site has some pretty old drivers, some don't even get updated and those that do are behind by like 6 months. Definitely important to have updated drivers, just always check changelogs and avoid troublesome driver updates. 

[Chris Titus's Windows Utility](https://github.com/ChrisTitusTech/winutil): Very useful tool especially right after a clean install of Windows. 

Recommended Apps to download:

NTLite (purchasing the home version is a necessity and worth every penny. Free version is very limited)- Tool to make custom Windows ISO's to debloat, customize your OS, alter online images, and remove any reinstalled bloat from an update.
https://www.ntlite.com/shop

Nilesoft Shell- Make custom context menus (especially useful for replacing Windows 11's completely useless context menu and adding some flare).
https://github.com/moudey/Shell

GoInterruptPolicy- Reduce latency and stutter by turning on MSI mode for drivers, associating which cores drivers are gonna be using, and change priorities. Can also increase performance in some cases, especially if you are using Intel Cpu's with E-cores or AMD Cpu's with 3d cache
https://github.com/spddl/GoInterruptPolicy

O&O Shut Up 10- tell Windows to Shut Up, stop spying, and killing perf for no reason.
https://www.oo-software.com/en/shutup10

NVCleanstall- debloat Nvidia drivers to combat DPC latency, audio stutter, and lag in general.
https://www.techpowerup.com/nvcleanstall

LatencyMon- pretty much benchmarking how much lag is in your system, test changes, help troubleshoot, and point out problem areas.
https://www.resplendence.com/latencymon

ExplorerPatcher- An ABSOLUTE MUST if you are using Windows 11. This fixes that garbage start menu, context menu, and all the inconvenient
changes made in 11. My shared settings makes it exactly like Windows 10 but with the advantages of Windows 11 like tabs in File Explorer.
https://github.com/valinet/ExplorerPatcher

Nirsoft Utilities- There are so many useful utilities here but the ones I use most are ShellMenuView, ShellMenuNew, and ShellExView to easily make changes to the context menu. Mostly to remove some or move them to the Shift+RightClick extended context menu to reduce clutter. Can't really add programs to context menu with these sadly but that can be done with Nilesoft Shell but that also requires you to code a program in yourself (not for newbies) but that is definitely easier than doing it through the OS itself.
https://www.nirsoft.net/utils

Sysinternals Suite- I recommend downloading the whole suite. Everything here is useful and makes problem solving so much easier. Process Monitor and Process Explorer are must's and can help point out problem processes, malware, and test priorities easily.
https://learn.microsoft.com/en-us/sysinternals/downloads/sysinternals-suite

Microsoft Powertoys- Makes life so much easier on Windows. Registry Preview, Powertoys Run, Always on Top, Color Picker, Fancy Zones, and Power Rename are some of my favorites that have saved me ALOT of time doing any kind of development and multitasking in general.
https://learn.microsoft.com/en-us/windows/powertoys

NanaZip- By far the best free archiving program, is based on 7zip but much much better with more features, control, and much better compression.
https://github.com/M2Team/NanaZip

Driver Store Explorer (RAPR)- Program that makes removing and adding drivers very easy. Device Manager doesn't fully remove drivers, it only stops associating with a driver (if it even works) while continuing to store the driver and might still leave some conflict. This program likes you fully remove the driver with easy, can also show you all drivers in system and what ones are currently associated. This pointed out to me that Intel's chipset driver installer was actually installing a few unrelated drivers while leaving the ones needed not installed or not associated. 
https://github.com/lostindark/DriverStoreExplorer

Link Shell Extension- An awesome program that makes creating Symbolics Links, Hard Links, and Juctions as easy as possible. It add's an option to your context menu to create Symbolic Links, Hard Links, Junctions and much more. This makes it so easy to organize your files however you want together without having to move them between drives. Essentially makes shortcuts without the programs or anything know that they are shortcuts. Also makes accessing network files easier. There is alot of other uses too but convenience is a big one.
https://schinagl.priv.at/nt/hardlinkshellext/linkshellextension.html
