#! /bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Этот баш скрипт должен запускаться с рут правами!"
  exit
fi
#echo "This bash script will run only with root privileges!"
dd if=/dev/zero of=/tmp/my_sys_2M.img bs=1M count=2
mkfs.ext2 -F /tmp/my_sys_2M.img
mkdir -p /mnt/new_disk
chmod -R ug+rw /mnt/new_disk
mount -o loop,rw,sync /tmp/my_sys_2M.img /mnt/new_disk
echo "Количество файлов в ФС"
ls /mnt/new_disk | wc -l
df -h | grep "/mnt/new_disk"

