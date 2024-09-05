#!/bin/bash
cd openwrt

# Add luci-app-amlogic
git clone https://github.com/ophub/luci-app-amlogic.git  package-temp/luci-app-amlogic
mv -f package-temp/luci-app-amlogic/luci-app-amlogic package/lean/
rm -rf package-temp

echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# Modify default IP
sed -i 's/192.168.1.1/10.0.1.11/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/liberty/g' package/base-files/files/bin/config_generate
