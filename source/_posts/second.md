---
title: 自動部屬設定
date: 2019-05-03 00:00:00
updated: 2019-05-08 00:00:00
tags:
- hexo設定
- 標籤設定
- 分類設定
---

# 自動部屬設定

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

# 標籤與分類

因為我最後都是在github上直接修改檔案

所以我是直接在

我的 hexo 分支內的 source

分別建立 categories 與 tags 檔案夾

再到裡面建 index.md

內容分別是

```YAML
---
title: 文章分类
date: 2019-05-08 00:00:00
type: "categories"
---
```

與

```YAML
---
title: 文章標籤
date: 2019-05-08 00:00:00
type: "tags"
---
```

儲存後再到 Fork 出的主題包 hexo-theme-next 裡面修改

_config.yml

把這兩個

tags: /tags/ || tags
categories: /categories/ || th

前面的 # 拿掉

再去執行一次 travis 裡面的 Restart build 就成功囉







