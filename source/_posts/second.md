---
title: 自動部屬設定
date: 2019-05-03 00:00:00
tags:
---
# 自動部屬設定 #
可參考
https://hadronw.com/2018/05-27/travis-autodeploy-github-with-coding/
因有改theme
所以要加一段在
```
before_install:
    - export TZ='Asia/Taipei' # 更改时区
    - npm install hexo-cli -g  # 安装hexo环境
    - git clone https://github.com/chianChen/hexo-theme-next themes/next
    - chmod +x ./publish-to-gh-pages.sh  # 为shell文件添加可执行权限
```
記得要先去 Fork 原來 theme

