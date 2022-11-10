#!/bin/bash

splitLine="====================================================="
userName="gfshui"
email="gfshui@yahoo.com.tw"

# 配置 git 使用者名稱和郵箱
git config --global  user.name ${userName}
git config --global user.email ${email}
git config --global  --list 
echo "Enter 或者 y 鍵確認"
ssh-keygen -t rsa -C "${email}"

# 列印公鑰
echo "複製儲存下面的公鑰新增到遠端倉庫"
echo ${splitLine}
cat ~/.ssh/id_rsa.pub
echo ${splitLine}
echo "按任意鍵退出"
read -n 1
echo "繼續執行"