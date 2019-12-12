# How to setup Drobo-5C on the Linux

## 前提
※以下の[]のところは臨機応変に！！！

********************************************
## format into NTFS by using the Drobo Dashboard

********************************************
Login your account

you should enter the GUI environment
```bash
startx
```

connect to Linux machine(with USB connecter)
maybe this Drobo is mounted automatically to /media/drobo
So... you should type following command!
```
sudo umount /media/[drobo]
```

And next...
```
Applications > System Tools > Disk Utility
```
Select your Drobo device
Format Drive
********************************************
## Download Tools(drobo-utils)
```bash
cd ~/Downloads 
```

download drobo-utils (under [~/Downloads] directry) through git clone
```bash
git clone git://drobo-utils.git.sourceforge.net/gitroot/drobo-utils/drobo-utils
```
********************************************
## Format by using the drobo-utils
```bash
cd ./drobo-utils
sudo ./drobom status
sudo ./drobom -d /dev/sd[?] format ext3
sudo sh -x /tmp/fmtscript
mkfs.xfs -f -L [Drobo] /dev/sd[?]1
lsblk -a
sudo parted -l
```
```bash
sudo mkdir [drobo]
```
if you want to mount this machine, you can type this command...
```bash
mount /dev/sd[?]1 /mnt/[drobo]
```
You should confirm with File Manager "Dolphin" in any case...
```bash
dolphin &
```
you can go to /mnt/[drobo] = "cd /mnt/", and you should right click...properties

## Confirmation by using "Drive Usage"
see the Drive Usage

you can see this directry size!(maybe this directry size is shown [??]Tb)
if you can confirm you can mount the Drobo device rightly, let's go next step!
**********************************************
## Automatic Mount
```bash
cd /etc/
blkid /dev/sd[?]1
sudo emacs ./fstab &
```

You have to edit fstab file and then reboot
add following words
```
UUID=[***************(type here UUID you could know through the blkid command)]   /mnt/[drobo]  xfs  defaults 0 0
```

## Driver Install(if you need ...)
```bash
which xfsprogs
```
if this kernel-driver is nothing in this Linux System, you have to install this through the package manager "yum"
```bash
sudo yum install xfsprogs
```
Finally...
```bash
reboot
```
if you can see this device is mounted automatically...
this task is completed!!!

[memo]
blkidでxfsになっているかどうか確認できる


