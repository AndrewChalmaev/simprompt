#!/bin/env pwsh

$SOURCE="Users/andrew"
# $SRC_AV="mnt/t"

$short=@(
  "aud",
  "desk",
  "doc",
  "down",
#  "goo",
#  "ins",
#  "one",
#  "docs",
#  "pics",
  "pic",
#  "scr",
  "vid"
# " yad"
)
$long=@(
  "$SOURCE/Music",
# " $SRC_AV/Music",
  "$SOURCE/Desktop",
  "$SOURCE/Documents",
  "$SOURCE/Downloads",
#  "$SOURCE/GoogleDrive",
#  "$SRC_AV/install",
#  "$SOURCE/OneDrive",
#  "$SOURCE/OneDrive/docs",
#  "$SOURCE/OneDrive/pics",
  "$SOURCE/Pictures",
#  "$SOURCE/Pictures/Screenshots",
  "$SOURCE/Videos"
#  "$SRC_AV/Videos",
#  "$SOURCE/Yandex.Disk"
)

cd /
for ($i=0; $i -lt $short.Count; $i++) {
  if (Test-Path $short[$i]) {Remove-Item -Path $short[$i]}
  sudo New-Item -Path $short[$i] -ItemType SymbolicLink -Target $long[$i]
}
