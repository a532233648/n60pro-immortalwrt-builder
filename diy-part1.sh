#!/bin/bash

set -e

#=================================================
# 添加 OpenClash
#=================================================

rm -rf package/luci-app-openclash
rm -rf /tmp/OpenClash

git clone \
  --depth 1 \
  https://github.com/vernesong/OpenClash.git \
  /tmp/OpenClash

cp -rf \
  /tmp/OpenClash/luci-app-openclash \
  package/

rm -rf /tmp/OpenClash


#=================================================
# 添加 MentoHUST
#=================================================

rm -rf package/mentohust
rm -rf /tmp/luci-app-mentohust

git clone \
  --depth 1 \
  https://github.com/sbwml/luci-app-mentohust.git \
  /tmp/luci-app-mentohust

cp -rf \
  /tmp/luci-app-mentohust \
  package/mentohust

rm -rf /tmp/luci-app-mentohust
