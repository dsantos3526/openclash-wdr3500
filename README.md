# openclash-wdr3500
install openclash di wdr3500

download disini
https://github.com/frainzy1477/luci-app-clash

wget -P /tmp/ https://github.com/frainzy1477/luci-app-clash/releases/download/v1.7.5.7/luci-app-clash_v1.7.5.7_all.ipk
cd /tmp
opkg update
opkg install luci-app-clash_v1.7.5.7_all.ipk

