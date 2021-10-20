# Arch install guide

## Load a key map

```shell
ls /usr/share/kbd/keymaps/**/*.map.gz  
loadkeys sv-latin1
```

## Verify boot mode

```shell
ls /sys/firmware/efi/efivars
```

## Update system clock

```shell
timedatectl set-ntp true  
timedatectl status
```

## Create partition table

```shell
fdisk --list --color  
fdisk /dev/sda
```

## Format partitions

```shell
mkfs.fat -F32 /dev/sda1  
mkfs.ext4 /dev/sda2  
mkfs.ext4 /dev/sda3
```

## Mount partitions

```shell
mount /dev/sda2 /mnt  
mkdir -p /mnt/boot/efi  
mount /dev/sda1 /mnt/boot/efi  
mkdir /mnt/home  
mount /dev/sda3 /mnt/home
```

## Setup mirrors

```shell
pacman -Syy  
pacman -S reflector  
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak  
reflector -c "sweden" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist
```

## Install essential packages

```shell
pacstrap /mnt base base-devel linux linux-firmware
amd-ucode nvidia networkmanager man-db man-pages sudo nano neovim
```

## Generate fstab for mounted partitions

```shell
genfstab -U /mnt >> /mnt/etc/fstab
```

## Change root into the system

```shell
arch-chroot /mnt
```

## Set timezone

```shell
ln -sf /usr/share/zoneinfo/Europe/Stockholm /etc/localtime  
hwclock --systohc
```

## Configure localization

```shell
nvim /etc/locale.gen  
# uncomment the locales to include  
locale-gen

echo "LANG=en_US.UTF-8" >> /etc/locale.conf  
export LANG=en_US.UTF-8

echo "KEYMAP=sv-latin1" >> /etc/vconsole.conf
```

## Configure network

```shell
echo "arch-desktop" >> /etc/hostname

nvim /etc/hosts  
127.0.0.1   localhost  
::1         localhost  
127.0.1.1   arch-desktop.localdomain   arch-desktop
```

## Set root password

```shell
passwd
```

## Setup a boot loader

```shell
pacman -S --needed grub efibootmgr os-prober  
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ARCH  
grub-mkconfig -o /boot/grub/grub.cfg
```

## Install xserver

```shell
pacman -S xorg xorg-server xclip xsel
```

## Install a DE or WM

```shell
pacman -S plasma sddm konsole zsh
```

## Create a user

```shell
EDITOR=neovim visudo
# uncomment %wheel ALL=(ALL) ALL

useradd -m -G wheel -s /bin/zsh dan  
passwd dan
```

## Exit and reboot

```shell
exit  
umount /mnt/boot/efi  
umount /mnt/home  
umount /mnt  
reboot
```

## Enable services

```shell
systemctl enable NetworkManager.service  
systemctl enable sddm
```

## If all its working install additional software

```shell
pacman -S --needed
ttf-dejavu ttf-liberation noto-fonts noto-fonts-emoji
git openssh gcc gcc-ada clang cmake make ninja nodejs npm yarn python-pip
tmux fzf rsync nnn bat lsd ripgrep fd htop lazygit wget which mpv mpd ncmpcpp
firefox thunderbird speedcrunch dia konsole filelight dolphin spectacle
gwenview kite okular kdiff3 kdialog
libreoffice-fresh jdk-openjdk
```

## Extras

### Making mpd+ncmpcpp work

```shell
systemctl --user enable mpd  
```

Use the ALSA output, pulseaudio sucks
