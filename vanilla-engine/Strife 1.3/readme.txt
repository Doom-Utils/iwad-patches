Welcome to STRIFE (TM)!
----------------------------------------------------------------------------
iii. IF YOU HAVE PROBLEMS WITH THE ANIMATED INTRO
----------------------------------------------------------------------------
By deleting STRIFE.AVI, STRIFE.BAT and AVI.EXE and running STRIFE1.EXE to
start STRIFE, you can bypass the movie and save yourself about 11MB of disk
space.

The animated intro has been known to have problems on certain systems, 
especially those that are not 100% SoundBlaser compatible.  If yours is
one of these systems, just bypass the movie.

----------------------------------------------------------------------------
ii. IS YOUR README FILE OUT OF DATE?
----------------------------------------------------------------------------
You can get our latest releases from the following places:
Velocity's WWW Home Page
http://www.velocitygames.com/

Rogue's WWW Home Page
http://www.gamers.org/~rogue/strife.html

Note that there is also a file called MULTI.TXT, that covers multi-player
topics.

----------------------------------------------------------------------------
i. WHAT IS MY STRIFE VERSION NUMBER?
----------------------------------------------------------------------------
To find out, look at the file VERSION.TXT.  To do this from DOS, enter the
command "TYPE VERSION.TXT".

----------------------------------------------------------------------------
0. Table of Contents
----------------------------------------------------------------------------
iii. IF YOU HAVE PROBLEMS WITH THE ANIMATED INTRO
ii. IS YOUR README FILE OUT OF DATE?
i. WHAT IS MY STRIFE VERSION NUMBER?
0. Table of Contents
1. Auxiliary Programs
2. Special Sound Options
3. General STRIFE Questions
4. Performance Issues
5. Trimming the hard-disk space requirements of STRIFE
6. Known Problems and Limitations within STRIFE
7. Specific Hardware Compatibility Notes
8. Legal Stuff

--------------------------------------------------------------------------
1. Auxiliary programs
--------------------------------------------------------------------------
There are a number of auxiliary programs that come with STRIFE. These are
IPXSETUP.EXE, the IPX Network Device Driver that enables you to play
STRIFE over an office network that uses the IPX protocol, and 
SERSETUP.EXE, the serial device driver that enables you to play STRIFE
over a modem or serial cable.
Documentation for the IPXSETUP.EXE and SERSETUP.EXE programs follow.

--------------------------------------------------------------------------
2. Special Sound Options
--------------------------------------------------------------------------
These options are normally disabled for stability reasons, but the
features may work on your computer. Setting the environment variable
DMXOPTIONS to -OPL3 may, if you have a modern SB compatible card, give you
stereo FM music.  Setting the same environment variable to -PHASE will
enable phase-shifted sound, which is most easily heard with headphones.
This deepens the stereo effect of sound effects.

--------------------------------------------------------------------------
3. General STRIFE Questions
--------------------------------------------------------------------------
Q: Where can I get the network STRIFE demo via the WWW?  
A: Point your browser at http://www.velocitygames.com/ or visit
http://www.gamers.org/~rogue/demo.html and click the "Click Here" 
graphic.
Q: Why do I start the game fighting Acolytes?
A: Read the "Mercenary" story in the manual opener, it's funny.
Q: Why do the endings use voices for characters that are already dead?
A: To leave room for a sequel.  Please send proposals to strife@velo.com)


--------------------------------------------------------------------------
4. Performance Issues
--------------------------------------------------------------------------
Background:
STRIFE requires more memory than DOOM.  A disk cache (such as SMARTDRV)
will speed things up a bit, but anything more than 256k or 512k doesn't
seem to make a difference.

Q: I have an 8MB machine, but STRIFE is still telling me that I don't have
enough memory.
A: Here are a few tips to find where the memory is going.
1. Use the 'mem /c /p' command from the DOS command line to find out who's
being uncooperative.
2. Quit Windows (or Windows 95). If you need to, make a DOS boot disk to
keep windows from loading.
3. Check your AUTOEXEC.BAT file to see how much SMARTDRV.EXE is using for
a disk cache. On 8MB machines, Windows sets it to 2048 (2MB) which could
be your problem. Try changing the number(s) to 320. You can run STRIFE on
an 8MB machine with a 320k disk cache. We've tried it.

--------------------------------------------------------------------------
5. Trimming the hard-disk space requirements of STRIFE
--------------------------------------------------------------------------
These files constitute the STRIFE movie. Delete them, and just run
STRIFE1.EXE:

     STRIFE.AVI (11 MB)
     STRIFE.BAT
     AVI.EXE

You can cut away another 29MB of space by deleting the VOICES.WAD file,
but nobody will ever talk to you again.

All these deletions should drop the STRIFE directory to a bit under 35MB.

--------------------------------------------------------------------------
6. Known Problems/Limitations within STRIFE
--------------------------------------------------------------------------
Q: I think I'm stuck in an area-- I can't get out.
A: Try reloading your saved game.  If that doesn't work, commit suicide, 
then hit [Spacebar] to restart the area at the beginning. This should 
solve your problem.  This should work even if you have already saved your 
game past the point of getting stuck.

Q: I've got a room with a ton of stuff in it, and some of the items/actors
have started to disappear! What's going on?
A: The DOOM engine has a limit on the maximum number of items that can be
visible at one time. Since STRIFE is pushing the limits of the engine as
it is, we made it so it will stop drawing objects when reaches that limit. 

Q: Sometimes my turn keys seem to lock up for a little while, having no
effect on my movement!
A: We've noticed that on some keyboards, when you're using the dedicated
arrow keys, it will sometimes not turn when you press right or left. This
usually happens when you have several other keys down, such as forward and
run.  We're looking for the problem. In the mean time, you can use the
number pad's arrow keys, those seem to work all right.

Q: I ran a second game of STRIFE while my first game was windowed, but the
sound is messed up.
A: Don't run two copies at the same time in Windows. If you discover that
you have no sound when starting STRIFE in Windows, just quit out and look
for a previously-started game of STRIFE on your desktop or in your
minimize bar.  Resolve that game before starting anew.

Q: My STRIFE game dumped out to Windows and I don't know how to get it
back.
A: Remember, [Alt] + [Tab] will minimize any window, even STRIFE. Be
careful around these keys while playing. You can return to STRIFE by
pressing them again, or clicking the full window button on the
windowed STRIFE game. When you return, you may need to tap the direction
keys to get them to relax they tend to "stick" when windowing out, leaving
you spinning in your game when you return.

--------------------------------------------------------------------------
7. Specific Hardware Compatibility Notes
--------------------------------------------------------------------------
STRIFE has been known to have problems on some sound cards that emulate
the Sound Blaster through software.  Also, see the note at the top of this
file about the animated intro.

--------------------------------------------------------------------------
8. Legal Stuff
--------------------------------------------------------------------------
STRIFE (TM), the STRIFE logo and STRIFE likenesses are trademarks of 
Velocity, Inc. STRIFE is Copyright 1996, Velocity, Inc., All rights 
reserved.
Velocity(TM) is a trademark of Velocity, Inc.
This product contains software code owned by Id Software, Inc. (the "Id 
Code")  Id Code copyright 1993, 1996 Id Software, Inc.  All Rights
Reserved.  The Id Software, Inc. name is a trademark of Id Software, Inc.
DOOM is a trademark of Id Software, Inc.
IBM is a registered trademark of International Business Machines, Inc. 
Sound Blaster is a registered trademark of Creative Labs, Inc.  All other 
trademarks are the property of their respective companies.
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Special thanks to Robert Huebner for networking assistance.
Thanks to Serge Smirnov (sxs111@po.cwru.edu) for graphics compression.
Thanks to Wolfgang Hessler (hessler@athene.informatik.uni-bonn.de) for 
the DOS AVI player.
--------------------------------------------------------------------------
