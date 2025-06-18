wget https://mirror.archlinux.no/iso/2025.06.01/archlinux-2025.06.01-x86_64.iso
sudo dd if=archlinux-2025.06.01-x86_64.iso of=/dev/sda bs=4M status=progress oflag=sync
sync
sudo eject /dev/sdX
iwctl
device list
device <device> set-property Powered on
station <device> scan 
station <device> get-networks
station <device> connect <ssid>
station <device> show 
