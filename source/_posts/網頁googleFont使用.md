---
title: 網頁上使用 google 字型
date: 2019-05-16 12:00:00
categories: 
- html
tags:
- CSS
- link
---

## 網頁上使用 google 字型

這是 google 提供的字型 [Noto Sans TC](https://fonts.google.com/specimen/Noto%20Sans%20TC "Noto Sans TC - Google Fonts") 要在網頁上使用很方便，選擇 SELECT THIS FONT 

選擇 CUSTOMIZE 可以自訂一些選項

再回 EMBED 有文件可以閱讀

- 把下面的 link 放入 <head> 之間
  ```html
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+TC&amp;subset=chinese-traditional" rel="stylesheet"> 
  ```

- 第二種方式 CSS 加入
```html
  <style>
  @import url('https://fonts.googleapis.com/css?family=Noto+Sans+TC&subset=chinese-traditional');
  </style> 
```
再到 CSS 定義字型
```css
font-family: 'Noto Sans TC', sans-serif;
```
就 OK 囉





## 參考網址 & 設定資料

[google 繁體中文字型](https://fonts.google.com/?subset=chinese-traditional "Google Fonts")
