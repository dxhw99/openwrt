#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#设置默认IP为 10.0.0.63
sed -i 's/192.168.1.1/10.0.0.63/g' package/base-files/files/bin/config_generate
# 设置默认主机名 znziot
sed -i 's/'OpenWrt'/'znziot'/g' package/base-files/files/bin/config_generate
# 加入编译者信息
sed -i "s/OpenWrt /Anke build $(TZ=UTC-8 date "+%Y.%m.%d") @OpenWrt /g" ../lede/package/lean/default-settings/files/zzz-default-settings
