#mkdir /mnt/hdd
#modprobe dm-crypt
echo "password\n" | cryptsetup luksOpen /dev/sdb5 hdd
#cryptsetup luksOpen /dev/sdb5 hdd << "dECRYPT10"
vgchange -ay
mount /dev/Debian/root /mnt/hdd/
mount /dev/Debian/home /mnt/hdd/home/
mount /dev/Debian/var /mnt/hdd/var
mount /dev/Debian/tmp /mnt/hdd/tmp/
#
