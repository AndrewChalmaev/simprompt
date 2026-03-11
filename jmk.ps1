#!/bin/env pwsh

SOURCE=C:/Users/andrew
# SRC_AV=mnt/t
short=(
  aud
  desk
  doc
  down
#  goo
#  ins
#  one
#  docs
#  pics
  pic
#  scr
  vid
#  yad
)
long=(
  $SOURCE/Music
#  $SRC_AV/Music
  $SOURCE/Desktop
  $SOURCE/Documents
  $SOURCE/Downloads
#  $SOURCE/GoogleDrive
#  $SRC_AV/install
#  $SOURCE/OneDrive
#  $SOURCE/OneDrive/docs
#  $SOURCE/OneDrive/pics
#  $SOURCE/Pictures
#  $SOURCE/Pictures/Screenshots
  $SOURCE/Videos
#  $SRC_AV/Videos
#  $SOURCE/Yandex.Disk
)

# sudo New-Item -Path "C:\desk\" -ItemType SymbolicLink -Target "C:\Users\andrew\Desktop\"
cd /
for i in ${!short[*]}; do
  printf "%s: %s\n" ${short[$i]} ${long[$i]}
  rm -f ${short[$i]}
  ln -s ${long[$i]} ${short[$i]}
done
