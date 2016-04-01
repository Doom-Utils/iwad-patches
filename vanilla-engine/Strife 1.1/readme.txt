Welcome to STRIFE!
-----------------------------

If you would like to work with modified levels of STRIFE, we
encourage you to purchase the retail version of the game. 


------------------------------------------------------------
Auxiliary programs
------------------------------------------------------------

There are a number of auxiliary programs that come with STRIFE. These
are IPXSETUP.EXE, the IPX Network Device Driver that enables you to play
STRIFE over an office network that uses the IPX protocol and SERSETUP.EXE,
the Serial Device Driver that enables you to play STRIFE over the modem
or serial cable.

The documentation for the IPXSETUP.EXE and SERSETUP.EXE programs follow.

-------------------------------------------------------------
Get our latest releases from the following places:

http://doomgate.cs.buffalo.edu/addons/adds/rogue/      Rogue's WWW Home Page

------------------------------------------------------------
STRIFE ADDENDUM
------------------------------------------------------------
Welcome to STRIFE. Before playing, you'll need to read the 
STRIFE manual and this addendum which contains information for 
playing in Multiplayer mode, as well as technical support 
and troubleshooting instructions. To avoid compatibility 
errors, please make sure that your machine and network conform 
to the system requirements listed below.

-------------------------------------------------------------
SYSTEM REQUIREMENTS
-------------------------------------------------------------
STRIFE(TM) requires an IBM compatible 486 or better with 4 megs of 
RAM, a VGA graphics card, and a hard disk drive. A 586 or 
better, a Sound Blaster Pro(TM) or 100% compatible sound card 
is recommended. A network that uses the IPX protocol is 
required for network gameplay. 

-------------------------------------------------------------
MULTIPLAYER MODE
-------------------------------------------------------------
GETTING STARTED
-------------------------------------------------------------
1. Install STRIFE as described in the manual. 

2. Launch STRIFE from the SETUP program, by going to the 
directory in which you installed STRIFE, type SETUP, and press 
the ENTER key. (If you are installing STRIFE for the first 
time the SETUP program will be automatically launched.) 
Unlike playing STRIFE in single player mode, STRIFE in 
multiplayer mode must be run either from the SETUP program 
or by using the command line parameters mentioned later in 
this addendum. 

3. The SETUP program not only allows you to configure STRIFE 
to your system but lets you tell STRIFE information that is 
necessary for the multiplayer game, (i.e. number of players, 
skill level, mode, etc.) The SETUP program is simple to 
use--providing context sensitive help at the bottom of the 
screen.

NUMBER OF PLAYERS: A maximum of eight people can play 
multiplayer STRIFE on a network. 

COMPATIBLE NETWORKS: To play multiplayer, you must have a 
network that uses the IPX protocol. Check your network 
manuals for information regarding your protocol. Novell 
networks use the IPX protocol. 

MULTIPLE GAMES ON THE NET: To play a multiplayer game while 
another group is also playing the multiplayer game, you'll 
need to change your network port address from the SETUP 
application. The port address tells your server where to 
send information that is sent over the network. Network 
addresses range from 1-64000. You should refer to the person 
in charge of your network for possible port addresses.

-------------------------------------------------------------
MULTIPLAYER INSTRUCTIONS
-------------------------------------------------------------
Many of the rules for playing STRIFE change for the 
multiplayer game. Read the following information carefully 
before you begin to play STRIFE in multiplayer mode.

MENUS: When you activate the Options menu or submenus, the 
game KEEPS RUNNING so that other players can continue with 
the action. So it is best to find a safe place before 
adjusting screen sizes or sounds.

UNPAUSE: A player may Pause the game by pressing the PAUSE 
key, but any other player can Unpause the game by pressing 
the PAUSE key again. Make sure it's OK with your buddies 
before taking a breather.

SAVE: You cannot save a game during a network play.

LOAD: You cannot load a saved game while playing a 
multiplayer game. 

WEAPONS: When a player runs over a weapon, he picks it up, 
but the weapon remains in the game for other players to 
take. With the RESPAWNING ITEMS option on, the items will dissapear,
and will come back in about 30 seconds.  With the RANDOM RESPAWN option
( -random from the commandline) items picked up will be randomly respawned.

DEATH: If you die and restart in the level, previously taken 
items and destroyed enemies DON'T reappear.  

UNIFORM COLORS: In net games, each player's uniform is a 
different color. The color of your character is the color 
next to your name on the FRAG/KEY screen. The colors are BROWN, 
RED, REDBROWN, GREY, DARK GREEN, GOLD, BRIGHT GREEN, and
SUPER-HERO BLUE.

CHAT MODE: In a multiplayer game you can communicate with 
other players in the Chat mode. To enter into Chat mode and 
broadcast a message to all the players, press the letter T. 
A cursor will appear where your messaging is normally 
placed. To broadcast to a specific player, after
pressing t you'll need to press the number of that player (1-8). 
You can also change your name by pressing the $ key, then enter your
name.

CHAT MACROS: In a multiplayer game, you can send your own
pre-defined macros (defined in the SETUP program) by initiating
Chat mode (as stated above), then holding ALT and pressing the
number key that corresponds to the macro you wish to send. For
example, if macro #2 is "Eat it and die!", initiate Chat mode
by pressing 'T', then hold down ALT and press 2.

EXITING A LEVEL: When one player exits a level, all players 
instantly exit with him, regardless of their position or 
their status.

-------------------------------------------------------------
DEATHMATCH MODE
-------------------------------------------------------------
There are two ways to play multiplayer--DeathMatch with and
without respawning items, described above. In DeathMatch mode
your mission is to kill everything that moves, including your
buddies. You can choose which mode you wish to play from SETUP.

In DeathMatch mode the players begin in completely different areas--
if you want to see your buddy you'll need to hunt him down.
Each time you die, you'll restart in one of several random locations.

KEYS: Unlike in single-player, in DeathMatch mode the players
start with the keys necessary for opening any locked door in that area.

KEY SCEEN: In DeathMatch mode, the key screen shows each player's
frag count - the number of time each has killed another player.

AUTOMAP: In DeathMatch, on Training the Automap works the same way 
it does in single-player mode. Each player is represented by 
a different color arrow.  

SPY MODE: If you're playing with the Training skill level, press F12 
to toggle through the other players' viewpoint(s). Press any 
other key to return to your view. You still retain your own 
status bar at the bottom, and if your view reddens from pain 
it is YOU, not your partner, who has been hit.

-------------------------------------------------------------
DEATHMATCH MODE GAMEPLAY NOTES
-------------------------------------------------------------
The rules for completing or winning a DeathMatch game have 
intentionally been left general. Any player can exit an area 
and force all of the players to move to the next area. Also, 
there is no limit on how many kills are required to declare 
a player the winner. We decided to leave this up to you. You 
know what you like best! 

Note: Before you play STRIFE in DeathMatch mode you should be 
familiar with the layout of every area in STRIFE. As you know, 
in DeathMatch mode your startup location is random and often 
in an area that is very hostile. 

-------------------------------------------------------------
MULTIPLAYER DEMO RECORDING
-------------------------------------------------------------
You can record your tournaments for posterity!  To record multi-
player demos, add the line "-record demoz" to the command-line.
Make sure the other player is recording also, or it won't work.
If you need more time, add the "-maxdemo <K>" option to increase
demo buffer space.  Make sure both of you specify the same amount.
STRIFE defaults to 128K of demo buffer space, to specify 1meg you
would type "-maxdemo 1024" on the command-line.

IF STRIFE BOMBS TO DOS WITH A "Z_MALLOC" ERROR, YOU DON'T HAVE
ENOUGH MEMORY FOR THE MAXDEMO AMOUNT SPECIFIED!

When you wish to stop recording, press the F10 key and all
players will exit to DOS.  To play the demo back, merely type,
"STRIFE -playdemo demoz" and the demo will play back.  To see the
other player, press the F12 key.  Press F12 to toggle between all
players in the demo.  The TAB key will display the automap.

You can set the name of the demo file to anything you want. "demoz"
was just an example name.

-------------------------------------------------------------
RUNNING STRIFE FROM THE COMMAND LINE 
-------------------------------------------------------------
Much of the information you give to STRIFE through the SETUP 
program can be provided by passing program parameters to 
the appropriate device driver on the command line. 

NETWORK PLAY
------------
When you want to run a network game, you use IPXSETUP.EXE which
is the device driver for STRIFE's network mode. The parameters 
are as follows:

-NODES starts STRIFE as a network game and sets the number of 
players who are going to play. If you don't specify the number
of nodes, the default is 2.
-nodes <# of players>

-PORT sets the port from which to play STRIFE multiplayer on 
the network. By setting a different port, more than one 
group of players can play STRIFE on a single network. 
-port <# of the port>

MODEM PLAY
----------
When you want to play a modem or null-modem game, you need to
run SERSETUP.EXE which is the device driver for STRIFE's serial
communications mode.  The parameters are as follows:

-DIAL tells the program which number to dial, if you're going
to do the calling.
-dial <phone number>

-ANSWER puts your modem into Answer mode so someone can call
you and play STRIFE.
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
a null-modem cable to run a STRIFE multiplayer game."

VERY IMPORTANT!
You will need to run the SETUP program and select Choose Modem
from the Network/Modem/Serial menu so you can set your modem
init string correctly.  Merely select the modem and press Enter
and SETUP will create a new MODEM.CFG file that corresponds to
your modem (the MODEM.CFG file is used by SERSETUP for initing
the modem.)

If your modem is not in the list, you will most likely need to
edit the MODEM.CFG file in the STRIFE directory.  The first line
of the file is an initialization string that:
    * Turns off error-correction
    * Turns off data-compression
The MODEM.CFG file has a Hayes-standard init string like this:
AT Z S=46 &Q0 &D0
You just add your own commands after the "AT Z " if your modem
doesn't work with these settings -- dig up your modem manual for
the correct settings.

The second line is a hangup string used when you quit STRIFE.

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

If you had trouble connecting, but figured out some settings that
work, please fax them to us at (214) 686-9288 so we can expand our
modem init string database and perhaps have the SETUP program ask
you for your modem type in a future version of STRIFE.

GENERAL PARAMETERS
------------------
These parameters can be passed straight to STRIFE, or passed
to IPXSETUP or SERSETUP, which then pass them to STRIFE.

-DEATHMATCH starts STRIFE as a DeathMatch game.
This is the default mode for a network game.
-deathmatch

-ALTDEATH specifies respawning items during DEATHMATCH. 
-altdeath

-RANDOM items picked up will be randomly respawned. Only useful with -altdeath
-random

-SKILL sets the skill level (1-5) you wish to play.
-skill <# of skill level>

-CONFIG allows you to use your configuration file from any 
directory you choose. This is primarily for diskless workstations 
that don't have a C: drive to save config information to. You 
need to rename the default.cfg file created by the SETUP program 
to a directory and name of your choosing to avoid conflicts.
-config <pathname>  ex. -config f:\STRIFE\data\myconfig.cfg

-NOMONSTERS allows you to start playing with NO Enemies shooting
you!  This is great for DeathMatch where, really, the enemies
just get in the way.
-nomonsters

-NOJOY isn't what it sounds like. It just disables your joystick.
-nojoy

-NOMOUSE disables your mouse. 
-nomouse

-NOSOUND turns off sound effects.
-nosound

-NOMUSIC turns off music.
-nomusic

-NOSFX turns off both sound and music.
-nosfx

-NOVOICE turns off the voices.
-novoice

-PLAYDEMO runs a demo you've previously recorded, using -RECORD.
-playdemo <filename>

-RECORD tells STRIFE to record the game you are starting.
Demo files will be saved as <filename>.lmp.
-record <filename>

-MAXDEMO xxx If you want to record a demo bigger than 128k, use
this option. xxx will be the size (in kilobytes) of the demo.
example -MAXDEMO 1024 will record a 1 megabyte demo.
-record <filename> -maxdemo xxx

-RESPAWN tells STRIFE to respawn some robots 12 seconds after you kill
them.  The robots that explode and go away when killed, will not respawn.
The BLOODBATH skill level already does this. Note that
using -respawn and -nomonsters at the same time is a dumb thing 
to do.
-respawn

-TURBO xxx gives you a speed boost. This is great in DeathMatch!
The value xxx can be from 0 to 250. The other player(s) will be
notified of your speed increase!  THIS IS CONSIDERED CHEATING
IN SINGLE PLAYER MODE!
-turbo xxx

@<filename> will allow you to specify a Response file that STRIFE
will read additional command-line parameters from.  For example,
typing 'STRIFE @MYPARMS' will tell STRIFE to look in the MYPARMS file
for additional command-line parameters.  The file format is simply
one parameter per line with a carriage return to terminate the line.
Each parameter is typed exactly as you would type it on the DOS
command-line.

-FAST will make the enemies move and shoot up to 3 times faster,
just as if you were playing in BloodBath mode, but without the
respawning.
-fast

-TIMER <# of minutes> will prevent STRIFE from exiting the level until after
a specified number of minutes. This is for you level scroungers!
This option is only useful in DeathMatch mode.
-timer xxx

An example line for entering the above information would be: 
STRIFE -deathmatch -skill 4 -timer 10

NOTE:  Without using the -WARP parameter in single player,
all of these game options will be reset to the defaults.  Network
games will automatically warp to the start level without this parameter.

-------------------------------------------------------------
ADDING MORE PHONE NUMBERS TO YOUR LIST
-------------------------------------------------------------
You must use a text editor (such as EDIT that comes with DOS)
to edit the MODEM.NUM file.  The format is simple.  The first line
is the Person's name (which will appear in the list), the second
line is the phone number.  The third line should be blank.

SPECIAL SOUND OPTIONS:
These options are normally disabled for stability reasons, but
the features may work on your computer.  Setting the environment
variable DMXOPTIONS to -opl3 may, if you have a modern SB
compatible card, give you stereo FM music.  Setting the same
environment variable to -phase will enable phase-shifted sounds
which is most easily heard with headphones.  This deepens the
stereo effect of sound effects.


Special thanks to Robert Huebner for IPX speed-up ideas.
Thanks to Serge Smirnov (sxs111@po.cwru.edu) for graphics compression.

-------------------------------------------------------------
STRIFE, the STRIFE logo and STRIFE likenesses are trademarks of Rogue 
Entertainment, inc.,(C)1996. IBM is a registered trademark of 
International Business Machines, inc. Sound Blaster is a 
registered trademark of Creative Labs, inc. All other 
trademarks are the property of their respective companies.

