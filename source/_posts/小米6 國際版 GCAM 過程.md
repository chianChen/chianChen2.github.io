---
title: 小米6 國際版 root & GCAM 過程
date: 2019-05-17 18:00:00
categories:
- 米6
tags:
- Google Camera
- root
- 解鎖
- Google Pay

---


## 小米6 國際版 root & GCAM 過程

1. 解鎖
2. recovery
3. ROOT
4. 改檔案
5. 安裝 GOOGLE camera
6. 完成
7. Magisk ctsprofile false

### 解鎖

1. 首先到 [解鎖小米手機](https://www.miui.com/unlock/index.html) 申請解鎖，申請後須等待三天審核通過，如果已有權限將會自動跳轉至解鎖工具下載頁。
2. 再到手機中登入已有解鎖權限的小米帳號，並進入 **設定 -> 開發者選項 -> 裝置解鎖狀態** 中綁定帳號與設備。
3. 登錄成功後，手機進入FASTBOOT模式(關機後，同時按住開機鍵與音量下鍵)
4. 我是有先執行MiUsbDriver.exe
5. 執行剛剛載的 miflash_unlock.exe，開啟後登入小米帳號，就可以開始解鎖
   **這裡我有遇到在 設定裝置解鎖狀態綁定 後三天才可解鎖**
6. 執行完畢後就完成小米解鎖囉

### 開啟ROOT

原以為 到安全中心 -> 應用管理 -> 權限 就可以開啟了
**結果國際開發版不支援**
只好在自己刷 ROOT 權限了

### RECOVERY

- 先下載 <http://tw.miui.com/thread-25375-1-1.html> 提供的 [adb-setup-1.4.3 .exe](<chrome-extension://bigefpfhnfcobdlfbedofhhaibnlghod/mega/secure.html#!0tcSUI6A!MXzvhLmERzhwcTX0doluSckuqMRzFLbXrqnlAWPEySM>)
- 下載 [TWRP for Xiaomi Mi 6](<https://twrp.me/xiaomi/xiaomimi6.html>) 選 Primary (Americas) 下載 [twrp-3.3.0-1-sagit.img](https://dl.twrp.me/sagit/twrp-3.3.0-1-sagit.img.html)

以系統管理員執行 adb-setup-1.4.3 .exe 
輸入 Y 並 enter 執行三次
跳出驅動程式安裝精靈點擊下一步完成
到 C:\adb 
下載 [官方提供的ADB](https://dl.google.com/android/repository/platform-tools-latest-windows.zip) 並把 C:\adb 裡面的四個檔替換掉

手機進入FASTBOOT(關機後長按電源鍵與音量下鍵)
手機與電腦連接
開啟命令提示字元
輸入指令 fastboot devices 
可看回應 xxxxxxxx fastboot 代表成功連結手機的 Fastboot

再把早前下載的 **twrp-3.3.0-1-sagit.img** 放到D槽

命令提示字元 輸入
fastboot flash recovery D:\twrp-3.3.0-1-sagit.img
得到 Fnished. 成功
長按電源鍵與音量上鍵直到進入 Recovery

### ROOT

到 [official XDA thread](https://forum.xda-developers.com/apps/magisk/official-magisk-v7-universal-systemless-t3473445) 下載 Magisk
直接把壓縮檔放到手機
再把手機回到 Recovery 模式
選安裝 選擇剛剛放入的 zip 檔
滑動滑塊以安裝 Magisk
最後點擊 restart

[在此處下載最新的Magisk Manager APK](https://github.com/topjohnwu/Magisk/releases/) 安裝他

打開後看到一堆綠色標記代表成功

### 改檔案

下載並運行 終端模擬器

在命令行介面輸入 SU enter

授予終端機 root 權限 完成後就具有 root 權限了

繼續輸入 setprop persist.camera.HAL3.enabled 1 Enter鍵

重啟手機

### 安裝 Google Camera

**但都沒成功 QQ**

### Google Camera 成功

[[Support][Feedback] GCam HDR+ for Mi6](https://forum.xda-developers.com/mi-6/themes/support-gcam-hdr-mi6-t3758876/page128)

使用最後一頁 [zilan](https://forum.xda-developers.com/member.php?u=1200086) 提供的模組與app

模組裝完重啟並再裝 app 成功

### Magisk ctsprofile false

安裝兩個  Magisk 模組以通過SafetyNet的檢查

1. MagiskHide Props Config
2. SafetyPatch

通過後就可以使用 Google Pay 囉

## 參考網址 & 設定資料

- [小米手机解锁 Bootloader 教程以及常见问题](http://www.miui.com/thread-3367802-1-1.html)
- [小米6使用Google Camera大幅提升拍照效果（不影响OTA）](http://www.miui.com/thread-14767245-1-1.html)
- [How to Install Magisk](https://www.xda-developers.com/how-to-install-magisk/)
- [手把手教你怎么root（TWRP卡刷方式，持续更新）](http://www.miui.com/thread-12263814-1-1.html)

