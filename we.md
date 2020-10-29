#[archlinux安装视频](https://www.bilibili.com/video/BV11J411a7Tpa)
<center>**"Archlinux配置"**</center>
_**连接网络**_
1.  ip link set wlan0 up
2.  wpa_passphrase  wifi名字 密码
3.  wpa_supplicant  wlan0    
**查看网络**     
ping baidu.com    

__设置时间__  
datetiemctl  set-ntp true   
**查看磁盘**
1.  fdisk -l   
2. fdisk /dev/sdb  //进入安装的磁盘路径    
3.g    

4.n
+512M
5. 3 +1G
6.  默认
7. w  保存    

**格式化分区**    

mkfs.fat -F32 /dev/sdb1    

mkfs.ext4    /dev/sdb2    
 mkswap   /dev/sdb3    

 swapon /dev/sdb3 //启用交换卷    
*装入文件系统*
mount /dev/root_partition /mnt    
**安装必要软件包**  
pacstrap /mnt base linux linux-firmware    

**Configure the system 配置系统**

genfstab -U /mnt >> /mnt/etc/fstab    

a. archlinux-root  /mnt    

**时区**  
ln -sf /usr/share/zoneinfo/Region/City /etc/localtime    

hwclocj --systohc    

local-gen    

vim /etc/locale.conf  

LANG=en_US.UTF-8  

vim /etc/hostname  

__主机名字__    

vim /etc/hosts  
**127.0.0.1 localhost
::1       localhost
127.0.1.1 用户名.localhost    用户名**  

arch-root /mnt  
passwd root    

密码  
exit
reboot


