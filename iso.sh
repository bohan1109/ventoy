sudo apt update && sudo apt install exfat-fuse exfat-utils

sudo mkdir iso2

cd iso2

sudo mkdir /mnt/usb

sudo wget -P /iso2 https://github.com/ventoy/Ventoy/releases/download/v1.0.77/ventoy-1.0.77-linux.tar.gz -O ventoy-1.0.77-linux.tar.gz

sudo tar zxvf ventoy-1.0.77-linux.tar.gz

cd ventoy-1.0.77/

yes | sudo sh Ventoy2Disk.sh -I /dev/sdc

cd ..

sudo mount /dev/sdc1 /mnt/usb

sudo wget -P /iso2 https://download.lenovo.com/pccbbs/mobiles/g2uj33us.iso -O Lenovo_BIOS_Update.iso

sudo wget -P /iso2 'https://zh-tw.osdn.net/frs/redir.php?m=nchc&f=clonezilla%2F77477%2Fclonezilla-live-3.0.1-8-amd64.iso' -O Clonezilla.iso

sudo wget -P /iso2 https://download.lenovo.com/pccbbs/thinkvantage_en/ldiag_4.41.0_linux.iso -O Lenovo_Diagnostics.iso

sudo wget -P /iso2 'https://releases.ubuntu.com/22.04/ubuntu-22.04-desktop-amd64.iso?_ga=2.174117668.765280584.1655952530-1398415221.1655707492' -O ubuntu-22.04.iso

sudo wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1VGz51tQakXOnUmLtJUlfpqnrcLyebnbb' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/1n/p')&id=1VGz51tQakXOnUmLtJUlfpqnrcLyebnbb" -P /iso2  -O windows.iso && rm -rf /tmp/cookies.txt

sudo wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1EKWsGPR04mmp5CrqTaZ2yyf9z63o4HnT' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/1n/p')&id=1EKWsGPR04mmp5CrqTaZ2yyf9z63o4HnT" -P /iso2  -O USBOX_V7.iso && rm -rf /tmp/cookies.txt

sudo cp -v Clonezilla.iso Lenovo_BIOS_Update.iso Lenovo_Diagnostics.iso ubuntu-22.04.iso USBOX_V7.iso windows.iso /mnt/usb

sudo umount /dev/sdc1
