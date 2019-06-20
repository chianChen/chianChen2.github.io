---
title: PHP抓資料存成檔案
date: 2019-06-20 12:00:00
categories:
- PHP
tags:
- 檢查內網
- CHMOD權限設定
- 抓資料存成檔案
keywords: ['PHP','抓資料存成檔案','檢查內網','CHMOD權限設定']
description: '於本機端抓資料存成檔案，在瀏覽器執行時可更新檔案但需檢查內網且設定權限'
---

```PHP
<?
$schcidr="192.168.0.0/16";
$ip=$_SERVER["REMOTE_ADDR"];
//檢查是否為內網
function cidr_match($ip, $range){
    list ($subnet, $bits) = explode('/', $range);
    if ($bits === null) {
        $bits = 32;
    }
    $ip = ip2long($ip);
    $subnet = ip2long($subnet);
    $mask = -1 << (32 - $bits);
    $subnet &= $mask; # nb: in case the supplied subnet wasn't correctly aligned
    return ($ip & $mask) == $subnet;
}
//檢查為 內網 或是 在主機端直接執行
if(cidr_match($ip, $schcidr) or empty($ip)){
	$fname = "/u/www/travel/b2c/addfile/citytest/".date('Y-m-d').".html";
    //開啟檔案，若檔案不存在則會試著建立
	$fd=fopen($fname,"w");
	fwrite($fd,$showdata);
	fclose($fd);
	//檢查 檔案存在 且 權限不是646 時執行權限設定
	if(file_exists($fname) && substr(decoct(fileperms($fname)), 2) != '0646')
		chmod($fname, 0646);
}
?>
```
