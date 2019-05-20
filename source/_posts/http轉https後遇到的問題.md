---
title: http 轉 https 後遇到的問題
date: 2019-05-16 18:00:00
categories: 
- 
tags:
- http
- https


---

## http 轉 https 後遇到的問題

1. 直接到檔案內重置 http 為 https

2. 有一些第一個方法改完還是沒有更改的，可以在瀏覽器的 DevTools 工具內搜尋 http，再到檔案內找尋這個 http 並修改為 https

3. 在工具中也有 console 會報錯可以去找尋修改

4. 有時太多可以直接在表頭加入

   ```
   <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
   ```
   //連外時，遇到 http 自動轉成 https 連線。

   他只會使原本 http 連線的，改為 https 請求所以會有幾個點要注意

   - 因為是改請求，故若要請求的資源沒有提供 https 就會被阻擋
     可以透過 proxy 代理方式解決，代理用 http 取得資源再透過自己的頁面用 https 傳給自己的代理(**請注意代理程式需有一定的保護**)
   - **在 IE 上不支援**
   - 有可能請求的資源本身不具備 SSL 連線





## 參考網址 & 設定資料

- [在https中使用http](https://ithelp.ithome.com.tw/questions/10185482 "bizpro大有解答")

- [CSP: upgrade-insecure-requests](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/upgrade-insecure-requests "在那些瀏覽器上不支援")

- [Upgrade Insecure Requests Sample](https://googlechrome.github.io/samples/csp-upgrade-insecure-requests/ "GOOGLE的示範")

- [关于启用 HTTPS 的一些经验分享](https://imququ.com/post/sth-about-switch-to-https.html)
