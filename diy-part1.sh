#!/bin/bash

set -e

#=================================================
# 添加 OpenClash 源码
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
# 添加其他第三方软件源示例
#
# 暂时不需要时保持注释即可
#=================================================

# echo 'src-git mypackages https://github.com/用户名/仓库名.git;main' \
# >> feeds.conf.default
