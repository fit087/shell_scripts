#!/bin/bash

set -x

# mount --bind /dev /mnt/hdd/dev
# mount --bind /dev/pts /mnt/hdd/dev/pts
# mount --bind /run /mnt/hdd/run
# mount --bind /sys /mnt/hdd/sys
# mount --bind /etc /mnt/hdd/etc
# mount --bind /usr /mnt/hdd/usr
# mount --bind /bin /mnt/hdd/bin
# mount --bind /proc /mnt/hdd/proc

for folders in /dev /dev/pts /run /sys /etc /usr /bin /proc
do
 mount --bind $folders /mnt/hdd$folders
done
