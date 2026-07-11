#!/bin/bash

#=================================================
# 在安装 feeds 之后执行
# 用于修改默认配置和源码
#=================================================


# 修改默认管理 IP
# 刷机后后台地址：http://192.168.10.1

sed -i 's/192\.168\.1\.1/192.168.23.1/g' \
package/base-files/files/bin/config_generate


# 修改默认主机名

sed -i "s/hostname='ImmortalWrt'/hostname='ZOW'/g" \
package/base-files/files/bin/config_generate


# 修改默认时区为中国标准时间

sed -i "s/timezone='GMT0'/timezone='CST-8'/g" \
package/base-files/files/bin/config_generate

sed -i "s#zonename='UTC'#zonename='Asia/Shanghai'#g" \
package/base-files/files/bin/config_generate


# 在 SSH 登录界面显示自定义固件名称

# echo '' >> package/base-files/files/etc/banner
# echo ' Netcore N60 Pro Custom ImmortalWrt' \
# >> package/base-files/files/etc/banner
