# retropie-crt-tvout

### Use retrarch 1.7.4 or newer

this is a set of configurations tuned to get the most accurate to real hardware as
possible picture on an ntsc crt tv using the composite video out of the raspberry pi
while also being able to use it on an hd tv without having to swap sd cards.

the crt configurations aren't perfect as the configurations available in the built-in
composite out of the raspberry pi are very limited.

#### systems (and emulator) configured and tested:
- arcade (finalburn alpha/neo and mame 2003. if the game native vertical resolution is 480 or less)
- atari 8bit computers (atari800)
- atari 2600 (stella)
- atari 5200 (atari800)
- atari 7800 (prosystem)
- colecovision (bluemsx)
- famicom disk system (fceumm and nestopia)
- game gear (genesis plus gx)
- game boy (gambatte and mgba)
- game boy advance (mgba)
- game boy color (gambatte and mgba)
- genesis/mega drive (genesis plus gx only)
- intellivision (freeintv)
- lynx (handy)(horizontal only)
- master system (genesis plus gx only)
- nintendo 64 (mupen64plus)
- neogeo (finalburn alpha)
- neogeo pocket (mednafen neopop)
- neogeo pocket color (mednafen neopop)
- nes (fceumm and nestopia)
- ms-dos (dosbox)
- msx (bluemsx)
- nec pc98 (np2kai)
- ports > cave story (nx engine)
- ports > doom (prboom)
- ports > quake (tyrquake)
- playstation (pcsx-rearmed)
- sega 32x (picodrive)
- sega cd (genesis plus gx only)
- sega sg-1000 (genesis plus gx)
- super nes (snes9x 2010, but other versions should work too)
- turbografx 16/pc engine/pce-cd (mednafen pce fast and mednafen supergrafx)
- wonderswan/color (mednafen wonderswan)
- zx spectrum (fuse)

all the configurations are for the libretro version of the emulators as they use
retroarch scaling capabilities and shaders to match each system resolution.
one exception is nintendo 64 which can be played without mayor problems with the
standalone mupen64plus without modifications, a libretro mupen64plus config is
provided anyways if you prefer that version.

it is better if a fresh instalation of retropie is used, but if you plan on
applying this to an already working instalation of retropie there are some
core options that need to be changed to make some systems work as intended.

please check to_configs/all/retroarch-core-options.cfg and compare it against
your current instalation of retropie intead of overwriting it if you wish to
keep your own core options.

some systems (famicom disk system, game gear, game boy, game boy color,
genesis/mega drive, master system, nes and sega cd) use a separate core options file
for crt to avoid interference with other systems and hd tv settings.

#### selectable settings:
there are some selectable options available through some scripts that can be run
through runcommand, in the runcommand menu go to the option called _user menu_ and a
bunch of options will appear with straightforward names.

the game boy emulator has selectable palettes:
- **set_gb_palette_DMG:** adjust the palette of game boy games to resemble the original
                          game boy colors.
- **set_gb_palette_GBL:** adjust the palette of game boy games to resemble the game boy
                          light colors.
- **set_gb_palette_GBP:** adjust the palette of game boy games to resemble the game boy
                          pocket colors.

if you do wish to also use your raspberry pi on an hd tv you can use the following
scripts:
- **run_crt_once:** runs the selected game with crt tv opmitized settings for this session.
- **run_hdmi_once:** runs the selected game with hd tv opmitized settings for this session.
- **set_this_system_crt:** set the configurations optimized for crt tv's for the system of
                           the selected game only. set_all_systems_crt does the same but to
                           all systems.
- **set_this_system_hdmi:** set the configurations optimized for hd tv's for the system of
                            the selected game only. set_all_systems_hdmi does the same but
                            to all systems.

portable systems also have some extra settings to display a border around or fill the
screen (due to how mid-game rotation is handled wonderswan/color doesn't have a fullscreen
mode for crt or a border mode for hdmi):
- **set_this_portable_crt_border:** adjusts the image to match each scanline perfectly and
                                    has a border corresponding the emulated system only for
                                    the system of the selected game, if the system isn't a
                                    portable it does nothing. set_all_portable_crt_border
                                    does the same but to all portable systems.
- **set_this_portable_crt_fullscreen:** fills the screen as much as possible while trying
                                        to maintain the image inside the viewable boundaries
                                        of the tv only for the system of the selected game,
                                        if the system isn't a portable it does nothing.
                                        set_all_portable_crt_fullscreen does the same but
                                        to all portable systems.
- **set_this_portable_crt_pixelperfect:** this is exactly like set_this_portable_crt_border
                                          but without the border only for the system of the
                                          selected game, the the system isn't a portable it
                                          does nothing. set_all_portable_crt_pixelperfect
                                          does the same but to all portable systems.
- **set_this_portable_hdmi_1080_border:** displays the image of the portable system in a
                                          multiple of its original resolution displaying
                                          a border corresponding the emulated system
                                          on the edges of the screen, adjusted for 1080p
                                          resolution. set_all_portable_hdmi_1080_border
                                          does the same but to all portable systems.
- **set_this_portable_hdmi_720_border:** displays the image of the portable system in a
                                         multiple of its original resolution displaying a
                                         border corresponding the emulated system on the
                                         edges of the screen, adjusted for 720p resolution.
                                         set_all_portable_hdmi_720_border does the same but
                                         to all portable systems.
- **set_this_portable_hdmi_no_border:** displays the image of the portable system in a
                                        multiple of its original resolution leaving the
                                        edges of the screen blank.
                                        set_all_portable_hdmi_no_border does the same but
                                        to all portable systems.

if you wish to force 480i you can create a _480i.txt_ file inside the configuration folder
of the system with a list with the file name (case insensitive, extension optional but recommended)
of the games you want to force 480i.</br>
if you want to force 480i for a whole system you can
write _all_ inside the _480i.txt_ file.</br>
this can also be used to set 480i in kodi.</br>
alternatively you can create a _240p.txt_ file to force 480i to all games BUT the ones inside the list.

example: _configs/psx/480i.txt_ containing _Bloody Roar 2.pbp_ to force 480i only to _Bloody Roar 2_</br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;_configs/psx/480i.txt_ containing _all_ to force 480i for all the PlayStation games.</br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;_configs/ports/kodi/480i.txt_ containing _all_ to force 480i on Kodi.</br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;_configs/dreamcast/240p.txt_ containing _Street Fighter III_ to force 480i to all games but Street Fighter III.

#### enhance arcade games:
arcade games are tricky to get a good picture out of because of the nature of arcade monitors
, the great range of resolutions those games use and some games even use the monitor in a vertical position.</br>
the good news is that there is something that can be done to try to frame them and don't lose
the borders of the image that many times contains important information for the game.

- **vertical mode:**
a new addition is the vertical mode that allows you to play vertical arcade games without having
to rotate your tv.</br>
to use it first you have to open the game you want to apply this mode, open retroarch menu
go to overrides and save game overrides. this will create a file in the _configs/arcade/config\_crt/emulator/rom.cfg_
folder, where _emulator_ is the name of the emulator used (typically _FinalBurn Neo_ or _MAME 2003 (0.78)_)
and rom is the filename of the game.</br>
once you have that file open it on a text editor and replace its contents with the contents of the
_configs/arcade/vertical.cfg_ file.</br>
if after that the game isn't displaying correctly or is vertical but upside down, change _video\_allow\_rotate_ to _false_, uncomment (delete the slashes before) _video\_rotation_ and assign it a value between _1_ and _3_.</br>
I recommend running vertical games in 480i mode because you'll lose image detail without the
extra resolution, but they still look excellent in 240p.

- **expand field of view:**
there are 3 additional configurations that can be used to force the game picture to fit inside the
viewable area of the screen without having to resort to adjust your tv (and potentially screw up
all the other systems in the process).</br>
those configs are used in the same way as the vertical mode above (except it doesn't have anything
to manually adjust), the files are _configs/arcade/expand1.cfg_, _configs/arcade/expand2.cfg_
and _configs/arcade/expand3.cfg_ each one being more aggressive.</br>
for reference, _expand1.cfg_ is being used in popeye and _expand3.cfg_ is applied in all the mortal kombat games.

if you prefer to have all set up, an optional zip file named _arcade\_tweaks.zip_ with all the vertical games
(and a few of the other problem games like mortal kombat) already configured is included.

#### how to use:
- it is recommended to use a fresh installation of retropie but isn't mandatory.
1. **connect your raspberry pi to your network (ethernet or wireless, it doesn't matter).**
2. **update it to the latest version of retropie.**
3. **connect to your raspberry pi via samba shares.**
4. **copy the contents of the bios and configs folders in the respective folders inside
   your raspberry pi.**
5. **turn off your raspberry pi and put its sd card on your pc.**
6. **copy the contents of the to_config.txt file at the end of the config.txt file on the
   sd card (use notepad++ or similar for this, never use windows notepad).**
7. **put the sd card back on your raspberry pi and copy some games.**
8. **install low resolution friendly themes for emulation station (gbz35, gbz35-dark,
   freeplay, tft, pixel-tft, minilumi and simpler-turtlemini are good ones or you can try
   [this one that I made](https://github.com/Sakitoshi/es-theme-Megarace)).**
9. **read above if you want to change how portable consoles are going to look or change
   game boy palettes or apply some tweaks to arcade games.**
10. **enjoy your games on a good'ol crt tv.**

follow the retropie documentation if you don't know how to connect your raspberry pi
to your network, samba shares or how to use runcommand.
