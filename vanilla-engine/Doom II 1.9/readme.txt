TABLE OF CONTENTS
Introduction & Quickstart.................................
Running DOOM II From the Command Line.....................
        Network Play
        Modem Play
        General Parameters
        Multiplayer Demo Recording
        Adding More Phone Numbers to Your List
Troubleshooting Addendum..................................

-------------------------------------------------------------
INTRODUCTION 
-------------------------------------------------------------

Welcome to DOOM II's README section. This section contains all
of the commands for running DOOM II from the command line, as
well as manual updates and technical support information.
    If you're the kind of person that likes to peruse the 
README file before loading and playing the game, you're in the
right section. To load and run DOOM, read the manual. 
    Don't be daunted by the troubleshooting information 
contained herein. Most users of DOOM II have no problems at
all. But if you're one of the unlucky few, this information
should save the day. 

-------------------------------------------------------------
RUNNING DOOM II FROM THE COMMAND LINE 
-------------------------------------------------------------
Much of the information you give to DOOM2 through the SETUP 
program can be provided by passing program parameters to 
the appropriate device driver on the command line. 

NETWORK PLAY
------------
When you want to run a network game, you use IPXSETUP.EXE which
is the device driver for DOOM2's network mode. The parameters 
are as follows:

-NODES starts DOOM2 as a network game and sets the number of 
players who are going to play. If you don't specify the number
of nodes, the default is 2.
-nodes <# of players>

-PORT sets the port from which to play DOOM2 multiplayer on 
the network. By setting a different port, more than one 
group of players can play DOOM2 on a single network. 
-port <# of the port>

MODEM PLAY
----------
When you want to play a modem or null-modem game, you need to
run SERSETUP.EXE which is the device driver for DOOM2's serial
communications mode.  The parameters are as follows:

-DIAL tells the program which number to dial, if you're going
to do the calling.
-dial <phone number>

-ANSWER puts your modem into Answer mode so someone can call
you and play DOOM2.
-answer

-COM1, -COM2, -COM3, -COM4 specifies which COM port your modem
or serial cable is connected to. Very important!
-com1

-8250 tells SERSETUP to set the UART to 8250.  Just in case your
16550 UART is acting up at the higher speed.
-8250

-IRQ sets the IRQ for the COM port.
-irq <irq number>

-PORT sets the COM I/O port that SERSETUP uses to communicate
with your modem.  To use hexadecimal, such as the number 0x3f8, you
would type "-port 0x3f8".
-port <port number>

-<#> sets the baud rate of your COM port, overriding the value in
the MODEM.CFG if you're running a modem game.  Legal values are
9600, 14400, 38400, 57600.
Example: -14400

Note that to run a null-modem game, you must have a null-modem
cable plugged into a serial port on both computers and each
computer runs SERSETUP.EXE with a -COM# parameter as well as
any General Parameters.  Do not use the -ANSWER or -DIAL
parameters, or SERSETUP will think you're using a modem. To get
a null-modem cable, go to CompUSA or Radio Shack and say,"I need
a null-modem cable to run a DOOM II multiplayer game."

VERY IMPORTANT!
You will need to run the SETUP program and select Choose Modem
from the Network/Modem/Serial menu so you can set your modem
init string correctly.  Merely select the modem and press Enter
and SETUP will create a new MODEM.CFG file that corresponds to
your modem (the MODEM.CFG file is used by SERSETUP for initing
the modem.)

If your modem is not in the list, you will most likely need to
edit the MODEM.CFG file in the DOOM2 directory.  The first line
of the file is an initialization string that:
    * Turns off error-correction
    * Turns off data-compression
The MODEM.CFG file has a Hayes-standard init string like this:
AT Z S=46 &Q0 &D0
You just add your own commands after the "AT Z " if your modem
doesn't work with these settings -- dig up your modem manual for
the correct settings.

The second line is a hangup string used when you quit DOOM2.

The third line is the baud rate at which you want your COM port set.
The legal settings are: 9600, 14400, 38400, 57600.

If the modem connection isn't working when you call your friend,
have him call you instead.  Try setting the modem to GENERIC (in the
SETUP.EXE program) if your modems don't connect.

If you STILL can't get the modems to connect, both of you should
run your favorite COMM programs and connect with 9600, no error
correction and no data compression.  Then quit the COMM program
and keep the connection going.  Then just run SERSETUP with a -COM#
parameter (as if you were running a null-modem game) since you're
already connected.

GENERAL PARAMETERS
------------------
These parameters can be passed straight to DOOM II, or passed
to IPXSETUP or SERSETUP, which then pass them to DOOM II.

-LOADGAME allows you to start DOOM II from a specified save 
game. Instead of using the saved game name, simply enter the 
number that corresponds to the slot you saved the game to on 
the SAVE GAME screen (0-5).
-loadgame <# of the game>

-DEATHMATCH starts DOOM II as a DeathMatch game. If you don't 
enter DEATHMATCH as a command line parameter, DOOM II will 
default to the Cooperative mode. 
-deathmatch

-ALTDEATH specifies respawning items during DEATHMATCH. 
NOTE: Invulnerability and Invisibility do not respawn.
-deathmatch -altdeath

-SKILL sets the skill level (1-5) you wish to play.   Only useful 
with -warp -- see below.
-skill <# of skill level>

-CONFIG allows you to use your configuration file from any 
directory you choose. This is primarily for diskless workstations 
that don't have a C: drive to save config information to. You 
need to rename the default.cfg file created by the SETUP program 
to a directory and name of your choosing to avoid conflicts.
-config <pathname>  ex. -config f:\DOOM2\data\myconfig.cfg

-NOMONSTERS allows you to start playing with NO MONSTERS running
around!  This is great for DeathMatch where, really, the monsters
just get in the way.  Only useful with -warp -- see below.
-nomonsters

-NOJOY isn't what it sounds like. It just disables your joystick.
-nojoy

-NOMOUSE disables your mouse. 
-nomouse

-NOSOUND turns off the sound while DOOM II is playing.
-nosound

-NOMUSIC turns off the music while DOOM II is playing.
-nomusic

-NOSFX turns off special effects sounds (like monsters growling,
guns firing, etc.) while DOOM II is playing. 
-nosfx

-PLAYDEMO runs a demo you've previously recorded, using -RECORD.
-playdemo <filename>

-RECORD tells DOOM II to record as a demo the game you are 
starting. Demo files will be saved as <filename>.lmp.
-record <filename>

-MAXDEMO xxx If you want to record a demo bigger than 128k, use
this option. xxx will be the size (in kilobytes) of the demo.
example -MAXDEMO 1024 will record a 1 megabyte demo.
-record <filename> -maxdemo xxx

-RESPAWN tells DOOM II that, yes, you are Bad, and yes, you
want all the monsters to respawn around 8 seconds after you kill
them.  The NIGHTMARE skill level already does this. Note that 
using -respawn and -nomonsters at the same time is a dumb thing 
to do.  Only useful with -warp -- see below.
-respawn

-TURBO xxx gives you a speed boost. This is great in DeathMatch!
The value xxx can be from 0 to 250. The other player(s) will be
notified of your speed increase!  THIS IS CONSIDERED CHEATING
IN SINGLE PLAYER MODE!
-turbo xxx

@<filename> will allow you to specify a Response file that DOOM II
will read additional command-line parameters from.  For example,
typing 'DOOM2 @MYPARMS' will tell DOOM II to look in the MYPARMS file
for additional command-line parameters.  The file format is simply
one parameter per line with a carriage return to terminate the line.
Each parameter is typed exactly as you would type it on the DOS
command-line.

-FAST will make the monsters move and shoot up to 3 times faster,
just as if you were playing in Nightmare mode, but without the
respawning.  Only useful with -warp -- see below.
-fast

-TIMER <# of minutes> will make DOOM II exit the current level after
the specified amount of minutes, when it goes to the intermission.
This option is only useful in DeathMatch mode.
-timer xxx

-WARP <# of level> starts DOOM II out right at the level you specify. 
For instance, to start at the first level, you'd type "-warp 1". 
The following command-line parameters are ONLY available while using
the -WARP parameter: -fast, -nomonsters, -skill, -respawn.
-warp xx

An example line for entering the above information would be: 
DOOM2 -loadgame 3 -deathmatch -skill 4 -timer 10

MULTIPLAYER DEMO RECORDING
-------------------------------------------------------------
You can record your tournaments for posterity!  To record multi-
player demos, add the line "-record demoz" to the command-line.
Make sure the other player is recording also, or it won't work.
If you need more time, add the "-maxdemo <K>" option to increase
demo buffer space.  Make sure both of you specify the same amount.
DOOM2 defaults to 128K of demo buffer space, to specify 1meg you
would type "-maxdemo 1024" on the command-line.

IF DOOM II BOMBS TO DOS WITH A "Z_MALLOC" ERROR, YOU DON'T HAVE
ENOUGH MEMORY FOR THE MAXDEMO AMOUNT SPECIFIED!

When you wish to stop recording, press the Q or F10 keys and both
players will exit to DOS.  To play the demo back, merely type,
"DOOM2 -playdemo demoz" and the demo will play back.  To see the
other player, press the F12 key.  Press F12 to toggle between all
players in the demo.  The TAB key will display the automap.

You can set the name of the demo file to anything you want. "demoz"
was just an example name.

ADDING MORE PHONE NUMBERS TO YOUR LIST
-------------------------------------------------------------
You must use a text editor (such as EDIT that comes with DOS)
to edit the MODEM.NUM file.  The format is simple.  The first line
is the Person's name (which will appear in the list), the second
line is the phone number.  The third line should be blank.

-------------------------------------------------------------
TROUBLESHOOTING ADDENDUM
-------------------------------------------------------------
If you require technical assistance to run DOOM II, call GT
Interactive Software's technical support line at (212) 951-3126.
 
If possible, please be near your computer when calling  
technical support. Please have information regarding your
system setup and configuration available. 

Before changing your system or software setup we recommend 
that you review your system manuals to ensure that your 
modifications will not endanger any existing information or 
hardware on you system or network. Modifying your system or 
your software setup can be dangerous, and we cannot help you 
with any resulting problems.

-------------------------------------------------------------
* NOTE * The following CMOS settings have been known to cause
a problem with DOOM II:

Hidden Refresh  
 This setting must be disabled.

Turbo Switch Function
 This setting must be disabled.

-------------------------------------------------------------
When DOOM II runs, I get an "Insufficient Memory" error or DOOM II 
just doesn't run.

You don't have enough free RAM to run DOOM II.  This usually
happens with 4Mb RAM machines -- you need about 3Mb of free
RAM to run DOOM II. If you have DOS 6 or later, boot your system 
and hold the left-shift key as the "Starting MS-DOS..." 
message appears. This will bare-boot your system and you must 
change to the DOOM2 directory and run DOOM2. Your best bet is 
to make a CONFIG.SYS menu for a custom DOOM II boot -- see 
page 97 in your MS-DOS 6 User's Manual. 
If you have DOS 5.0 or earlier, you must create a bare boot disk.        

Note: Do not use memory managers like EMM386, QEMM, etc.
Do not use disk caching programs like SMARTDRV, etc.

-------------------------------------------------------------
I get a "WRITE ERROR" while DOOM II is decompressing.

You are using a disk compression program such as STACKER or 
DOUBLESPACE. These utilities try to make an "educated" <ahem> 
guess as to how much disk space you have left.  Obviously, 
they're wrong.  Delete some big games that are chewing up 
hard drive space, like any Wolf-alikes. :)

-------------------------------------------------------------
The Windows SETUP program runs after installation.

DOOM II did not install to your hard drive, probably due to 
insufficient disk space.  See above answer for a solution.

-------------------------------------------------------------
My GUS doesn't work.

The default IRQ for a GUS is 11. DOOM II doesn't handle IRQ's 
above 7.  Change this with your GUS setup program.

-------------------------------------------------------------
I can't get digital sound from my Sound Blaster compatible 
sound card.

You are experiencing a DMA conflict. You may have a CD-ROM 
or hard drive on the same DMA channel that you specified in 
DOOM II's SETUP program. Change the DMA channel of the sound 
card or offending device.

-------------------------------------------------------------
DOOM II locks up before I see the title screen or at the title
screen.

You need to turn "Hidden Refresh" off in your CMOS Advanced 
Chipset settings. If you're using RAMBIOS.SYS, you must 
remove it from your CONFIG.SYS. Make sure you also turn off 
any Hardware Video Shadowing (also found in CMOS settings.)

-------------------------------------------------------------
DOOM II runs really slow, locks or "pauses" on a fast system.

Some systems have a option in the CMOS setup for switching
the speed of the PC from the keyboard. This is the 
"Turbo Switch" or "Turbo Switching" option. Disable this 
setting and your problem should be fixed.

-------------------------------------------------------------
I hear static when listening to DOOM II with my Sound Blaster 
(or compatible) card.

Run SBP-MIX (in your SBPRO directory) and turn down Line and 
Mic volumes to 0.

-------------------------------------------------------------
I still hear static, or my sound effects are breaking up.

Disconnect any parallel port devices. (Sound cards,
to work with DOOM II, must use IRQ5 or IRQ7, which are
used by LPT2 and LPT1 -- where printers are connected.)

-------------------------------------------------------------
I can't get sound on my ATI Stereo FX card.

Contact ATI for a BIOS upgrade.

-------------------------------------------------------------
DOOM II is too dark to see anything.

On some monitors, DOOM II may be too dark to play. Press F-11 
to improve the view.

-------------------------------------------------------------
Why can't I get music or sound effects?

If you're not hearing sound effects and/or music, DOOM II may 
have incorrect information regarding your sound card. Run 
the SETUP program to check if DOOM II has the correct 
information on your sound card. 

Note: DOOM II only supports IRQ numbers which are 7 or below. 
Be sure you set your sound card to an IRQ number which
is 7 or below. Refer to your sound card manual for details
on setting your IRQ number. 

Note: This is particularly important for Gravis Ultra Sound 
users because the standard default for the GUS card is 11.

-------------------------------------------------------------
I was playing DOOM II and my screen went black, but I can still
hear the game playing.

This can be fixed by changing the wait state jumper on your
video card from 0 to 1. This will cause no noticeable decrease
in your systems performance. Please refer to your video card 
manual for further details.

-------------------------------------------------------------
How can I run DOOM II under OS/2?

The ideal DOOM II-OS/2 system is a 486 with at least 8MB of RAM.

In order to get DOOM II up and running, first copy a program object
to the desktop from the templates folder. For details on this
procedure, please refer to your OS/2 Manual.

Once you have the program path and optional command line arguments
set up for the program object, you will need to edit the DOS session
settings. DOOM II will NOT run in a DOS window.

The DOS settings are as follows:

Setting:                        Value:
AUDIO_ADAPTER_SHARING           REQUIRED 
COM_DIRECT_ACCESS               ON
COM_HOLD                        OFF
COM_RECEIVE_BUFFER_FLUSH        NONE
COM_SELECT                      ALL
DOS_AUTOEXEC                    *DRIVE:\AUTOEXEC.BAT
DOS_BACKGROUND_EXECUTION        OFF
DOS_BREAK                       OFF
DOS_DEVICE                      *DRIVE:\OS2\MDOS\LPTDD.SYS 
DOS_FCBS                        16
DOS_FCBS_KEEP                   8 
DOS_FILES                       20 
DOS_HIGH                        OFF
DOS_LASTDRIVE                   Z 
DOS_RMSIZE                      640 
DOS_SHELL                       *DRIVE:\OS2\MDOS\COMMAND.COM 
				*DRIVE:\OS2\MDOS 
DOS_STARTUP_DRIVE               *** 
DOS_UMB                         OFF 
DOS_VERSION                     *** 
DPMI_DOS_API                    DISABLED
DPMI_MEMORY_LIMIT               4 
DPMI_NETWORK_BUFFER_SIZE        64 
EMS_FRAME_LOCATION              NONE 
EMS_HIGH_OS_MAP_REGION          0 
EMS_LOW_OS_MAP_REGION           0 
EMS_MEMORY_LIMIT                0 
HW_NOSOUND                      OFF 
HW_ROM_TO_RAM                   OFF 
HW_TIMER                        ON
IDLE_SECONDS                    0 
IDLE_SENSITIVITY                100 
INT_DURING_IO                   ON 
KBD_ALTHOME_BYPASS              ON 
KBD_BUFFER_EXTEND               ON 
KBD_CTRL_BYPASS                 NONE 
KBD_RATE_LOCK                   OFF
MEM_EXCLUDE_REGIONS             *** 
MEM_INCLUDE_REGIONS             *** 
MOUSE_EXCLUSIVE_ACCESS          ON 
**NETWARE_RESOURCES             GLOBAL 
PRINT_SEPERATE_OUTPUT           ON 
PRINT_TIMEOUT                   15 
VIDEO_8514A_XGA_IOTRAP          OFF 
VIDEO_FASTPASTE                 OFF 
VIDEO_MODE_RESTRICTION          NONE 
VIDEO_ONDEMAND_MEMORY           OFF 
VIDEO_RETRACE_EMULATION         OFF 
VIDEO_ROM_EMULATION             OFF 
VIDEO_SWITCH_NOTIFICATION       OFF 
VIDEO_WINDOW_REFRESH            1 
**VIPX_ENABLED                  ON 
XMS_HANDLES                     0 
XMS_MEMORY_LIMIT                0 
XMS_MINIMUM_HMA                 0

*DRIVE = The drive your OS/2 system files are located on.  
**Only required for Network play 
*** Leave as default

-------------------------------------------------------------
During startup, the DOOM II startup stops at "looking for player..."

This occurs when you enter a number of players greater than 
the amount of players actually entering the game. For 
example, if you only have three players playing, but you 
tell DOOM II to expect four players, it will wait until the 
fourth player starts the game. Press ESC to exit and restart 
the game with the correct number of players. 

-------------------------------------------------------------
I'm receiving the error, "IPX NETWORK NOT DETECTED."

Currently, DOOM II only supports a network that uses the IPX 
protocol. If you receive this message, check your network 
manual to ensure your network uses the IPX protocol. 

-------------------------------------------------------------
I've received the message, "CONSISTENCY FAILURE" while 
running DOOM II.

For DOOM II to run properly as a multiplayer game, all of the 
machines that are running DOOM II must maintain a nearly 
identical status of the game during network play. If you 
receive this message, something has occurred which caused 
the multiplayer game on one computer to be different from 
the multiplayer games running on the other systems. If this 
occurs, all of the players must quit from DOOM II and restart 
the game.

-------------------------------------------------------------
Why isn't the animation smooth?

If the animation isn't running smoothly on your system you 
should try reducing the window size and/or play DOOM II in LOW 
DETAIL mode. Refer to your DOOM2 manual for instructions on 
these options.

-------------------------------------------------------------
Why doesn't my mouse work with DOOM II?

If you renamed or commented-out information in your 
AUTOEXEC.BAT you may have removed the command which loads 
your mouse driver. Loading your mouse driver into DOS can be 
as simple as typing MOUSE and pressing ENTER at the command 
prompt. 

-------------------------------------------------------------
Special thanks to Tom Klok for the GUS instrument mapping.
-------------------------------------------------------------
SPECIAL SOUND OPTIONS:
These options are normally disabled for stability reasons, but
the features may work on your computert.  Setting the environment
variable DMXOPTIONS to -opl3 may, if you have a modern SB
compatible card, give you stereo music.  Setting the same
environment variable to -phase will enable phase-shifted sounds
which is most easily heard with headphones.  This deepens the
stereo effect of sound effects.

-------------------------------------------------------------
DOOM II, the DOOM II logo and DOOM II likenesses are trademarks
of id Software, inc.,(C)1994. GT Interactive is a trademark of
Goodtimes Entertainment. IBM is a registered trademark of 
International Business Machines, inc. Sound Blaster is a 
registered trademark of Creative Labs, inc. All other 
trademarks are the property of their respective companies.
