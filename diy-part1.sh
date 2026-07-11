#!/bin/bash

#=================================================
# 在更新 feeds 之前执行
# 用于添加或修改第三方软件源
#=================================================

# 第一次编译建议保持为空，先确认基础固件能够正常生成。


# 添加第三方软件源示例：
#
# echo 'src-git mypackages https://github.com/用户名/仓库名.git;main' \
# >> feeds.conf.default


# 添加多个软件源示例：
#
# echo 'src-git packages1 https://github.com/用户名/仓库1.git;main' \
# >> feeds.conf.default
#
# echo 'src-git packages2 https://github.com/用户名/仓库2.git;main' \
# >> feeds.conf.default
