#!/bin/sh

#  03-test.sh
#  FSShells
#
#  Created by 付森 on 2021/3/29.
#  

pwd_path=$(pwd)
echo "路径=${pwd_path}"


sdk_version=$(xcodebuild -version -sdk iphoneos SDKVersion)
echo "sdk版本=${sdk_version}"

