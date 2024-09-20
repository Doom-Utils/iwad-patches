Master Levels for Doom II is a little bit weird, and the provided
scripts might only work with the GNU version of tar, so that a
deterministically-built archive will be generated.

The original release on PC provides the Master Levels as a collection
of PWADs that aren't really attached to each other.  Console releases
have typically combined these in some form.  The only supported
version going either direction, at the moment, is the Doom 3: BFG
Edition version included on the Xbox 360 and PlayStation 3 releases.

In order to solve going from multiple files to a single file, or vice
versa, a tar file is used as an intermediary.  In order to
deterministically generate the tar file, so that a binary patch can
work at all, special options are passed to tar so that the UID, GID,
and timestamps are normalized to determined values.  This allows
vcdiff to work against a known-good tar file for converting to and
from the console version.

Three scripts are provided.  If you have xdelta3 installed, the latter
two should be extremely helpful.

generate-tar.sh: As the name implies, this creates a tar file based on
                 the set of loose PWADs for Master Levels

xdelta3-from_console.sh: Patches the console version of the Master Levels
                         to the tar file, then extracts it.

xdelta3-from_pc.sh: Converts loose files to the tar and patches it
                    to the console version.


f095f557c9969bafd249710da7675c1bc2e94698  masterlevels_console.wad
47d5b10aee861791c9272ba4944e8eb1ea1e0819  masterlevels_kex.wad
