#!/bin/bash

echo $1

dir="out"
if [ ! -d "$dir" ];then
mkdir $dir
echo "创建文件夹成功"
else
echo "文件夹已经存在"
fi

cd out
configdir="config"
if [ ! -d "$configdir" ];then
mkdir $configdir
echo "创建文件夹成功"
else
echo "文件夹已经存在"
fi

cp -fr ../src/config/** ./config/
cd ..

tsc $1 -p ./