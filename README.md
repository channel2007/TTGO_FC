# TTGO_FC
![alt TTGO_FC](https://github.com/channel2007/TTGO_FC/blob/main/image/pototype.jpg "TTGO_FC")

# 研發日誌
* 2025/7/13  新增ROM檔案上傳工具(tools目錄)
* 2025/7/12  重新編譯韌體檔案(firmware目錄)
* 2023/3/1   修改將畫面延伸至全螢幕
* 2021/10/16 初版

# 前言
* 使用TTGO板執行FC模擬器。。。
* 注意：此FC/NES模擬器並非支援所有Mapper

# 準備材料
* TTGO T-Display ESP32 x1
* PAM8302單通道音頻放大器D類2.5W音頻功率放大模塊 x1
* 小喇叭 2W 8歐姆 8R X1
* 按鈕開關 6x6x4.3 二腳 x8
* 10k歐姆電阻 x5
* 400孔麵包板 x2
* 140根 麵包板線 x1盒

# 線路圖
![alt TTGO_FC](https://github.com/channel2007/TTGO_FC/blob/main/image/circuitDiagram.png "TTGO_FC")

# 燒錄韌體
* 將firmware目錄內的檔案透過flash_download_tool工具燒錄進TTGO T-Display內
* [下載flash_download_tool工具](https://docs.espressif.com/projects/esp-test-tools/en/latest/esp32/production_stage/tools/flash_download_tool.html)
* 開啟燒錄工具後參考以下設定
* ![alt TTGO_FC](https://github.com/channel2007/TTGO_FC/blob/main/image/burn.jpg "TTGO_FC")
* 檢查設定無誤後按下START開始燒錄，等燒錄完畢，記得拔掉電源再插上，TTGO T-Display螢幕出現以下畫面，恭喜您已經燒錄成功
* ![alt TTGO_FC](https://github.com/channel2007/TTGO_FC/blob/main/image/teach_4.jpg "TTGO_FC")

# 上傳ROM檔案
* [下載arduino-esp32fs-plugin外掛](https://github.com/me-no-dev/arduino-esp32fs-plugin/releases/tag/1.0)
* [請參考這個網址安裝外掛](https://randomnerdtutorials.com/install-esp32-filesystem-uploader-arduino-ide/?fbclid=IwY2xjawLeGthleHRuA2FlbQIxMABicmlkETFTNDBMUVRjQ2JsamlIM2M3AR4Uc8BM6RyEro_KZrvjfgJT1MrF0VcvqlrbqUz-l-KLUT9eaOtNVYVtXG8Z2A_aem_EtgH_SRQUT_7NxGu6uBOEQ)
* 開啟esp32-nofrendo/esp32-nofrendo.ino檔案，並將要燒錄的ROM檔案放入esp32-nofrendo/data目錄內(只能一個ROM檔)
* 設定正確的序列埠
* ![alt TTGO_FC](https://github.com/channel2007/TTGO_FC/blob/main/image/teach_1.jpg "TTGO_FC")  
* 選擇ESP32 Sketch Data Upload開始燒錄ROM檔案
* ![alt TTGO_FC](https://github.com/channel2007/TTGO_FC/blob/main/image/teach_2.jpg "TTGO_FC")
* 燒錄完成後，拔掉電源再插上，就可以在TTGO T-Display螢幕上看到燒錄的遊戲畫面
* ![alt TTGO_FC](https://github.com/channel2007/TTGO_FC/blob/main/image/teach_3.jpg "TTGO_FC")

# 上傳ROM檔案工具
* 只支援Windows
* 開啟tools目錄，將要上傳的ROM檔案放入data目錄內(只能一個)
* 開啟"命令提示字元"，輸入go.bat COM1(後面這個COM1是您電腦與TTGO連接的COM)
* 執行後就可以將ROM檔案傳輸到TTGO內了

# 編譯原始碼所需函數庫
  * [Arduino_GFX](https://github.com/moononournation/Arduino_GFX/releases/tag/v1.1.5)
  * [arduino-nofrendo](https://github.com/moononournation/arduino-nofrendo)

# 參考資料
* 本專案修改至陳亮老師的GitHub專案
  * [arduino-nofrendo](https://github.com/moononournation/arduino-nofrendo)

# 官方紛絲團 
[無限升級](https://www.facebook.com/unlimited.upgrade/posts/2840132506240869?notif_id=1617421138749926&notif_t=page_post_reaction&ref=notif)

# 官方Youtube
[無限升級](https://www.youtube.com/channel/UC4reRKznNk1CcjZfxKUdMuw)
