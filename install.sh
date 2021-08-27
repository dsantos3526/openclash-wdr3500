#!/bin/ash
echo "Download Luci-app-Clash"
wget -O /tmp/luci-app-clash.ipk https://github.com/frainzy1477/luci-app-clash/releases/download/v1.7.5.7/luci-app-clash_v1.7.5.7_all.ipk
echo "Download Ipk Done"
cd /tmp/
opkg update && opkg install luci-app-clash.ipk
echo "Install luci app ipk done"

echo "download clash"
wget -O /etc/clash/clash-linux-mips-softfloat.gz https://github.com/frainzy1477/clash_dev/releases/download/v1.1.0/clash-linux-mips-softfloat.gz

echo "download gzip"
opkg update && opkg install gzip 
cd /etc/clash/
echo "unzip clash"
gunzip clash-linux-mips-softfloat.gz
chmod +x clash-linux-mips-softfloat
mv clash-linux-mips-softfloat /etc/clash/clash

echo "download classtun"
wget -O /etc/clash/clashtun/clash-linux-mips-softfloat-20210310.gz https://github.com/comzyh/clash/releases/download/20210310/clash-linux-mips-softfloat-20210310.gz
cd /etc/clash/clashtun/
gunzip clash-linux-mips-softfloat-20210310.gz
chmod +x clash-linux-mips-softfloat-20210310
mv clash-linux-mips-softfloat-20210310 /etc/clash/clashtun/clash

echo "download dtun"
wget -O /etc/clash/dtun/clash-linux-mips-softfloat-20210310.gz https://github.com/Dreamacro/clash/releases/download/premium/clash-linux-mips-softfloat-2021.07.03.gz
cd /etc/clash/dtun/
gunzip clash-linux-mips-softfloat-20210310.gz
chmod +x clash-linux-mips-softfloat-20210310
mv clash-linux-mips-softfloat-20210310 /etc/clash/dtun/clash

echo "Install Done"
