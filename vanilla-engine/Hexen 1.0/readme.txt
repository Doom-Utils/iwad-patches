TABLE OF CONTENTS
Introduction & Quickstart
Running Hexen From the Command Line
	Network Play
	Modem Play
	General Parameters
	Multiplayer Demo Recording
	Adding More Phone Numbers to Your List

-------------------------------------------------------------
INTRODUCTION 
-------------------------------------------------------------

Welcome to Hexen's README section. This section contains all
of the commands for running Hexen from the command line, as
well as manual updates and technical support information.
    If you're the kind of person that likes to peruse the 
README file before loading and playing the game, you're in the
right section. To load and run Hexen, read the manual. 
    Don't be daunted by the troubleshooting information 
contained herein. Most users of Hexen have no problems at
all. But if you're one of the unlucky few, this information
should save the day. 

-------------------------------------------------------------
HEXEN HOTKEYS
-------------------------------------------------------------
There are 8 hotkeys that didn't make it into Hexen's manual.
Each press of these keys will use the corresponding item from
your inventory, if you possess that item:

Key     What
---     -----------------------------------------------
5       Icon of the Defender
6       Porkalator
7       Teleport Other
8       Chaos Device
9       Disc of Repulsion
0       Flechette
\       Quartz Flask
BACKSPACE       Panic button: USE one of everything you have!

-------------------------------------------------------------
ADDITIONAL PROGRAMS
-------------------------------------------------------------
The DWANGO multiplayer gaming network software is included with
Hexen. To install DWANGO, go to your Hexen directory and type
'DWANGO'. Follow the install instructions to place the DWANGO
product in its own directory. NOTE: You do NOT run DWANGO from
the Hexen directory (this is a feature of DWANGO v2.02).

To subsequently run DWANGO, you will need to go to your DWANGO
directory (which is usually \DWANGO) and type DWANGO to run it.
From within DWANGO, you specify where your games are located on
your hard drive (DOOM, DOOM II, Ultimate DOOM, Heretic, Hexen).

To run IPX network or modem games, use the DM program from the
Hexen directory. Just type 'DM' and select your options and
press F10.  This is the easiest way to play multiplayer Hexen
without typing command-line parameters to IPXSETUP or SERSETUP.

-------------------------------------------------------------
RUNNING HEXEN FROM THE COMMAND LINE 
-------------------------------------------------------------
Much of the information you give to Hexen through the SETUP 
program can be provided by passing program parameters to 
the appropriate device driver on the command line. 

The CD-ROM version of Hexen includes CD Audio music for those of
you not blessed with a Roland Sound Canvas.  Simply select
"CD Audio" in the SETUP program to play the music directly from
the Hexen CD. Note that you must be running Hexen from your
HARD DRIVE and you must have the Hexen CD in the CD-ROM drive
to listen to the CD Audio.

As a side effect of Hexen being able to play music on CD while
you play the game, we have added a "~<2-digit>" cheat code
that will allow you to play a song on the CD in your CD-ROM drive
during the game. Enter a 2-digit value for the track number on
the CD that you wish to listen to. Make sure track numbers less
than 10 have a leading 0, example: 04 is Track 4 on the CD. Thus,
to play CD Track 06 in Hexen, make sure an audio CD is in your
CD-ROM drive and press ~06 to play that track. This cheat code
only works while you are in a game.

NETWORK PLAY
------------
When you want to run a network game, you use IPXSETUP.EXE which
is the device driver for Hexen's network mode. The parameters 
are as follows:

-NODES starts Hexen as a network game and sets the number of 
players who are going to play. If you don't specify the number
of nodes, the default is 2.
-nodes <# of players>

-PORT sets the port from which to play Hexen multiplayer on 
the network. By setting a different port, more than one 
group of players can play Hexen on a single network. 
-port <# of the port>

MODEM PLAY
----------
When you want to play a modem or null-modem game, you need to
run SERSETUP.EXE which is the device driver for Hexen's serial
communications mode.  The parameters are as follows:

-DIAL tells the program which number to dial, if you're going
to do the calling.
-dial <phone number>

-ANSWER puts your modem into Answer mode so someone can call
you and play Hexen.
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
a null-modem cable to run a Hexen multiplayer game."

VERY IMPORTANT!
You will need to run the SETUP program and select Choose Modem
from the Network/Modem/Serial menu so you can set your modem
init string correctly.  Merely select the modem and press Enter
and SETUP will create a new MODEM.CFG file that corresponds to
your modem (the MODEM.CFG file is used by SERSETUP for initing
the modem.)

If your modem is not in the list, you will most likely need to
edit the MODEM.CFG file in the Hexen directory.  The first line
of the file is an initialization string that:
    * Turns off error-correction
    * Turns off data-compression
The MODEM.CFG file has a Hayes-standard init string like this:
AT Z S=46 &Q0 &D0
You just add your own commands after the "AT Z " if your modem
doesn't work with these settings -- dig up your modem manual for
the correct settings.

The second line is a hangup string used when you quit Hexen.

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
These parameters can be passed straight to Hexen, or passed
to IPXSETUP or SERSETUP, which then pass them to Hexen.

-LOADGAME allows you to start Hexen from a specified save 
game. Instead of using the saved game name, simply enter the 
number that corresponds to the slot you saved the game to on 
the SAVE GAME screen (0-5).
-loadgame <# of the game>

-DEATHMATCH starts Hexen as a DeathMatch game. If you don't 
enter DEATHMATCH as a command line parameter, Hexen will 
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
-config <pathname>  ex. -config f:\Hexen\data\myconfig.cfg

-NOMONSTERS allows you to start playing with NO MONSTERS running
around!  This is great for DeathMatch where, really, the monsters
just get in the way.  Only useful with -warp -- see below.
-nomonsters

-NOJOY isn't what it sounds like. It just disables your joystick.
-nojoy

-NOMOUSE disables your mouse. 
-nomouse

-NOSOUND turns off the sound while Hexen is playing.
-nosound

-NOMUSIC turns off the music while Hexen is playing.
-nomusic

-NOSFX turns off special effects sounds (like monsters growling,
guns firing, etc.) while Hexen is playing. 
-nosfx

-PLAYDEMO runs a demo you've previously recorded, using -RECORD.
-playdemo <filename>

-RECORD tells Hexen to record as a demo the game you are 
starting. Demo files will be saved as <filename>.lmp.
-record <filename>

-MAXDEMO xxx If you want to record a demo bigger than 128k, use
this option. xxx will be the size (in kilobytes) of the demo.
example -MAXDEMO 1024 will record a 1 megabyte demo.
-record <filename> -maxdemo xxx

-RESPAWN tells Hexen that, yes, you are Bad, and yes, you
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

@<filename> will allow you to specify a Response file that Hexen
will read additional command-line parameters from.  For example,
typing 'hexen @MYPARMS' will tell Hexen to look in the MYPARMS file
for additional command-line parameters.  The file format is simply
one parameter per line with a carriage return to terminate the line.
Each parameter is typed exactly as you would type it on the DOS
command-line.

-FAST will make the monsters move and shoot up to 3 times faster,
just as if you were playing in Nightmare mode, but without the
respawning.  Only useful with -warp -- see below.
-fast

-TIMER <# of minutes> will make Hexen exit the current level after
the specified amount of minutes, when it goes to the intermission.
This option is only useful in DeathMatch mode.
-timer xxx

-WARP <# of level> starts Hexen out right at the level you specify. 
For instance, to start at the first level, you'd type "-warp 1". 
The following command-line parameters are ONLY available while using
the -WARP parameter: -fast, -nomonsters, -skill, -respawn.
-warp xx

An example line for entering the above information would be: 
Hexen -loadgame 3 -deathmatch -skill 4 -timer 10

MULTIPLAYER DEMO RECORDING
-------------------------------------------------------------
You can record your tournaments for posterity!  To record multi-
player demos, add the line "-record demoz" to the command-line.
Make sure the other player is recording also, or it won't work.
If you need more time, add the "-maxdemo <K>" option to increase
demo buffer space.  Make sure both of you specify the same amount.
Hexen defaults to 128K of demo buffer space, to specify 1meg you
would type "-maxdemo 1024" on the command-line.

IF Hexen BOMBS TO DOS WITH A "Z_MALLOC" ERROR, YOU DON'T HAVE
ENOUGH MEMORY FOR THE MAXDEMO AMOUNT SPECIFIED!

When you wish to stop recording, press the Q or F10 keys and both
players will exit to DOS.  To play the demo back, merely type,
"hexen -playdemo demoz" and the demo will play back.  To see the
other player, press the F12 key.  Press F12 to toggle between all
players in the demo.  The TAB key will display the automap.

You can set the name of the demo file to anything you want. "demoz"
was just an example name.

ADDING MORE PHONE NUMBERS TO YOUR LIST
-------------------------------------------------------------
Press the F2 key when you're in the Modem Configuration screen (about
to initiate a modem game). Press ENTER and type the person's name.
Press ENTER again to keep the name. Use the right arrow key to move
the cursor to the Number field and press ENTER.  Type the phone
number and press ENTER. Type F10 to save this information.

-------------------------------------------------------------
Special thanks to Colin Caird for the GUS instrument mapping.
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
Hexen, the Hexen logo and Hexen likenesses are trademarks
of Raven Software, (C) 1995. GT Interactive is a trademark of
Goodtimes Entertainment. IBM is a registered trademark of 
International Business Machines, inc. Sound Blaster is a 
registered trademark of Creative Labs, inc. All other 
trademarks are the property of their respective companies.
