#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git' >>feeds.conf.default
sed -i "s/^OPENWRT_RELEASE=.*/OPENWRT_RELEASE='immortalwrt-$(date +%Y%m%d)'/" package/base-files/files/usr/lib/os-release
