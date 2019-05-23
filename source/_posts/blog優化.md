---
title: blog優化
date: 2019-05-23 18:00:00
categories:

tags:
- blog
- hexo
- next
keywords: ['next','blog優化']
description: '使用 hexo 主題為 next 創建的 blog 優化。'

---

## blog優化

### 拿掉 name 的 meta

在主題的檔案夾下的 scripts 新增一個檔案

[unregister_meta_generator.js](https://github.com/chianChen/hexo-theme-next/blob/master/scripts/unregister_meta_generator.js)

內容為

```
hexo.extend.filter.unregister('after_render:html', require('../../../node_modules/hexo/lib/plugins/filter/meta_generator')); 
```

再重新建置 blog <meta name="generator" content="Hexo 3.8.0"> 就會拿掉囉

