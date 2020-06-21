#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf

# Add a feed source
sed -i '$a src-git darkpro git://github.com/kuyokushin/luci-theme-darkpro.git' feeds.conf
sed -i '$a src-git noodlesDark https://github.com/HDragon8/luci-theme-noodlesDark.git' feeds.conf
