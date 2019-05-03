---
title: first
date: 2017-10-05 11:10:39
tags:
---
# Github SSH 連線 #

打開git bash，查看是否已經存在ssh秘鑰
```
cd ~/.ssh
ls
```
生成ssh秘鑰
```
ssh-keygen -C "your_email@example.com"
```
在 /c/Users/you/.ssh 路徑下看到剛生成的文件：
    
`id_rsa` 和 `id_rsa.pub`，即公鑰和私鑰。

在GitHub帳戶中添加公鑰

* 登錄你的github，頭像處下拉框選擇settings。
* 進入設置頁後點擊側邊欄的 `SSH and GPG keys` 按鈕。
* `New SSH key` 裡的 title 可以任意填，並且將上一步驟生成的 id_rsa.pub 的內容複製到這裡的 key 輸入框中

確認完成 github SSH 連線
```
ssh -T git@github.com
```
完成



# hexo 指令 #

清除快取檔案 (db.json) 和已產生的靜態檔案 (public)
```
hexo clean
```
產生靜態檔案 (hexo generate)

```
hexo g (-d)
#先產生靜態網站再部屬
```

部署網站 (hexo deploy)

```
hexo d (-g)
#在部屬前先產生靜態網站
```

啟動伺服器 (hexo server)，啟動後 http://localhost:4000/
```
hexo s
```
參考網址 & 設定資料
-------------------

* [手把手教你使用 Hexo + Github Pages 搭建个人独立博客](https://linghucong.js.org/2016/04/15/2016-04-15-hexo-github-pages-blog "令狐葱@前端笔记")
* [Hexo 指令](https://hexo.io/zh-tw/docs/commands.html "hexo.io")
* [NexT 主題使用頁](http://theme-next.iissnan.com/getting-started.html "NexT 使用文檔")
* [SSH秘鑰生成](https://read01.com/zh-tw/G38kkO.html#.WdiJ6VuCypq "使用ssh連接gitHub - 壹讀")