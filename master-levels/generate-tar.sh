#!/bin/sh -

checksum_error() {
    cat <<EOF >&2
Checksums did not verify for the Master Levels WAD files. Please make
sure that all files are copied from a Master Levels installation
directory with all-lowercase file names.
EOF
    exit 1
}

sha256sum --status -c <<EOF 2>/dev/null || checksum_error
SHA256 (attack.wad) = 4b9a404a4ee43ed33f7c2e208269b84b58ccfec5823afa1fe50e3dd08e927622
SHA256 (blacktwr.wad) = a0120667412fcf293ea13cdc31c1fa0626d7828f83a195aa09f4170797d07473
SHA256 (bloodsea.wad) = 1b1acb09f4319db32903dc502d84fc034d21611e375771f4aaac66fafabea39a
SHA256 (canyon.wad) = a2dd18d174d25a5d31046114bf73d87e9e13e49e9e6b509b2c9942e77d4c9ecf
SHA256 (catwalk.wad) = ce1241e16b2e8bb8bbceea84a281e81f865c52670e4eb3649dc7372870985b77
SHA256 (combine.wad) = fef0ac1090ba2f0bce92503625047d726c2d8d1964561bd557234e7ab6202dff
SHA256 (fistula.wad) = 864d51febc039b1431c5d75fb051f567433adbddce4bb4d8b6e959fc0b414724
SHA256 (garrison.wad) = 7a7a37d1f31c51ced17167f5283daffef27d79310df0c96b13f4cb1723a2417c
SHA256 (geryon.wad) = ec5c0b1b846764d4b7cc8038e5fac1b1562627d0bcca413a55e918d3141cbfbc
SHA256 (manor.wad) = fe0a502310ef1b32597e2e82d6f7f12ad77cb603ac5838056dee86f4bae31e2f
SHA256 (mephisto.wad) = 585040c5408bc66583dbe1b8e36d009c81799f7dbebd002af48e4c00088bfbd5
SHA256 (minos.wad) = fc3996e52b527dd4d7e76b023eebaa0c18263c94e21115b06ba64c8cda371ec0
SHA256 (nessus.wad) = 05a2e5f7e13acfe21895f6ad2ecd216052d8c5c4bcb65b67745678ca0ae3e0dc
SHA256 (paradox.wad) = 4e9f37b8209dc7006637050876d917e9a68b053ef24e17725432781b00969bdf
SHA256 (subspace.wad) = 2c61963efe338abc38b13fb01f238fd95d6b0e2a627ca78db038b9761ff6e6ac
SHA256 (subterra.wad) = 3dba2abcb85ae3685c259b21bd867d542439c591c12162a36066f1fbab6cbdd8
SHA256 (teeth.wad) = 629e2a6eb1a0234ef0f152384a01130b3d8cd0e44f6c292463dbc2d6ae34d14e
SHA256 (ttrap.wad) = 90c7d8fc103e7b02b9602d5eb37fa439da1c5880355e4ee9fa53428ef30dcf45
SHA256 (vesperas.wad) = 14a515f480455a4bd23c8204d9d236c9ba18c147e8c10a364300832ee804fea3
SHA256 (virgil.wad) = c468a1684be8e8055fca52c0c0b3068893481dbaeff0d25f2d72a13b340dff09
EOF

# Make sure these files don't have the executable bit set, or the tar
# won't match the expected one for the patch.
chmod 644 attack.wad blacktwr.wad bloodsea.wad canyon.wad catwalk.wad \
      combine.wad fistula.wad garrison.wad geryon.wad manor.wad mephisto.wad \
      minos.wad nessus.wad paradox.wad subspace.wad subterra.wad teeth.wad \
      ttrap.wad vesperas.wad virgil.wad

GIT_DIR="$(mktemp -d)"
export GIT_DIR
GIT_WORK_TREE="$(pwd)"
export GIT_WORK_TREE

git init -q
git add -f attack.wad blacktwr.wad bloodsea.wad canyon.wad catwalk.wad \
    combine.wad fistula.wad garrison.wad geryon.wad manor.wad mephisto.wad \
    minos.wad nessus.wad paradox.wad subspace.wad subterra.wad teeth.wad \
    ttrap.wad vesperas.wad virgil.wad
env GIT_AUTHOR_DATE="1995-08-08 02:00:00 +0000" git commit -q -m "Master Levels"
git archive -o masterlevels.tar master

rm -fr "$GIT_DIR"
