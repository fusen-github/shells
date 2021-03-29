#!/bin/sh

#  02-demo.sh
#  FSShells
#
#  Created by 付森 on 2021/3/29.
#  

# 1.接收一个终端命令的返回值 注意:=两边不能带有空格
# eg:获取当前mac中xcode对应的iOS sdk版本
sdk_version=`xcodebuild -version -sdk iphoneos SDKVersion`
echo "sdk版本=${sdk_version}"


# 2.获取当前shell文件的全路径
pwd_path=$(pwd)
echo "路径=${pwd_path}"

# 3.进入交互指令界面
# eg:数据库加密指令，打开数据库 (<< EOF 进入交互式程序. 注意 << 和EOF中间有空格)
# 在交互指令中可以执行多条命令
sqlcipher ${filePath} << EOF
ATTACH DATABASE "${newPath}" AS encrypt KEY "${password}";
SELECT sqlcipher_export ('encrypt');
DETACH DATABASE encrypt;
.q
EOF


