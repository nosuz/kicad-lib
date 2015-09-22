# KiCad コンポーネントとフットプリント

## 使い方

### コンポーネント

1. コンポーネントライブラリ([nosuz.lib](nosuz.lib)と[nosuz.dcm](nosuz.dcm))をダウンロードする。
2. 回路図エディタ(Eeschema)を起動する。
3. 設定からコンポーネントライブラリを開く。
4. 「ユーザ定義の検索パス」の「追加」ボタンをクリックして、ダウンロードしたアイブラリーのあるフォルダを指定する。パスは、絶対でも相対でも良い。
5. コンポーネントライブラリの「追加」または「挿入」ボタンをクリックして、ダウンロードしたnosuz.libを開く。
6. 「OK」をクリックしてダイアログを閉じる。

これでKiCadと一緒に配布されるコンポーネントと同様に使用できます。

### フットプリント

1. プリント基板エディタ(Pcbnew)を起動する。
2. 「設定」から「フットプリントライブラリの管理」を開く。
3. 「グローバルライブラリ」または「プロジェクト固有のライブラリ」をタブで選ぶ。
4. 「ライブラリの追加」ボタンをクリックする。「ウィザードを使用して追加」はうまく行かない。
5. 「ライブラリの一覧」の最後に追加された欄に次のテーブル内容を書き込む。他のカラムは空白のままにする。別名は、好きな名前を指定できます。
6. 「OK」をクリックしてダイアログを閉じる。

|別名(ニックネーム)|ライブラリのパス|プラグインの種類|
|------------------|----------------|----------------|
|nosuz|https://github.com/nosuz/kicad-lib|Github|

追加したライブラリーは、Pcbnewの上部メニューの下に有るICに虫眼鏡のアイコン(フットプリントビューアを開く)を使うのが簡単です。

1. 「フットプリントビューアを開く」アイコンをクリックする。
2. 一番左のカラムから追加したフットプリントライブラリを選択する。

これでフットプリントの一覧が表示されればライブラリの追加成功です。

_Githubを参照すること無く、必要なフットプリントのみをダウンロードして使用することも可能です。_

## コンポーネントとフットプリント一覧

このレポジトリーには、次のコンポーネントとフットプリントが含まれています。

### コンポーネントと対応するフットプリント

|component|description|aliases|fp filter|footprint
|---------|--------|-----|---------|---------
|[2N7002K](https://www.fairchildsemi.co.jp/datasheets/2N/2N7002K.pdf)|Nch MOS-FET||SOT-23*|SOT-23_2N7002K.kicad_mod<br />SOT-23_IRLML6344.kicad_mod<br />SOT-23_BSS138.kicad_mod<br />SOT-23_IRLML6402.kicad_mod<br />SOT-23-5_NJM286x.kicad_mod
|74HC30|8-input NAND gate|74HCT30|SO14*|SO14_NPX_SOT108-1.kicad_mod
|74HC574|Octal D-type flip-flop; positive edge-trigger; 3-state|74HCT574|SO20*|SO20_NPX_SOT163-1.kicad_mod
|AM232x|Temp and Relative Humidity Sensor|AM2321<br />AM2320|AM232*|AM2321.kicad_mod<br />AM2320.kicad_mod
|[AQM0802A-RN-GBW](http://akizukidenshi.com/download/ds/xiamen/AQM0802.pdf)|LCD, I2C||AQM0802A-RN-GBW|AQM0802A-RN-GBW.kicad_mod
|[ATMEGA168PB-AU](http://www.atmel.com/ja/jp/Images/Atmel-42176-ATmega48PB-88PB-168PB_Datasheet.pdf)|ATMEGA168PB, TQFP32, 16k Flash, 1kB SRAM, 512B EEPROM|[ATMEGA48PB-AU](http://www.atmel.com/ja/jp/Images/Atmel-42176-ATmega48PB-88PB-168PB_Datasheet.pdf)<br />[ATMEGA88PB-AU](http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf)|TQFP32*|TQFP32_7x7_Atmel32A.kicad_mod
|[ATMEGA328P-MU](http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf)|ATMEGA328P, QFN/MLF32, 32k Flash, 2kB SRAM, 1kB EEPROM, picoPower|[ATMEGA328-MU](http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf)<br />[ATMEGA48A-MU](http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf)<br />[ATMEGA48PA-MU](http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf)<br />[ATMEGA88A-MU](http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf)<br />[ATMEGA88PA-MU](http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf)<br />[ATMEGA168A-MU](http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf)<br />[ATMEGA168PA-MU](http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf)|VQFN32*<br />QFN32*|QFN32_amtel32M1-A.kicad_mod
|[ATMEGA32U2-AU](http://www.atmel.com/images/doc7799.pdf)|ATMEGA32U2, TQFP32, 32k Flash, 1kB SRAM, 1kB EEPROM, USB 2.0|[ATMEGA8U2-AU](http://www.atmel.com/images/doc7799.pdf)<br />[ATMEGA16U2-AU](http://www.atmel.com/images/doc7799.pdf)|TQFP32*|TQFP32_7x7_Atmel32A.kicad_mod
|[ATMEGA48PA-CCU](http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf)|ATMEGA48PA, FBGA32, 4k Flash, 512B SRAM, 256B EEPROM|ATMEGA48A-CCU|FBGA32_Amtel32CC1|FBGA32_Amtel32CC1.kicad_mod
|[ATTINY441-SSU](http://www.atmel.com/Images/Atmel-8495-8-bit-AVR-Microcontrollers-ATtiny441-ATtiny841_Datasheet.pdf)|ATTINY441-SSU, SO14, 4k Flash, 256B SRAM, 256B EEPROM, ADC, ACI, dW|[ATTINY841-SSU](http://www.atmel.com/Images/Atmel-8495-8-bit-AVR-Microcontrollers-ATtiny441-ATtiny841_Datasheet.pdf)|SOP-14*|SOP-14_Atmel14S1.kicad_mod
|[ATXMEGA16D4-AU](http://www.atmel.com/Images/Atmel-8135-8-and-16-bit-AVR-microcontroller-ATxmega16D4-32D4-64D4-128D4_datasheet.pdf)|ATXMEGA16D4, TQFP44, 16k Flash, 4k Boot, 2k SRAM, 1k EEPROM, JTAG|[ATXMEGA32D4-AU](http://www.atmel.com/Images/Atmel-8135-8-and-16-bit-AVR-microcontroller-ATxmega16D4-32D4-64D4-128D4_datasheet.pdf)<br />[ATXMEGA64D4-AU](http://www.atmel.com/Images/Atmel-8135-8-and-16-bit-AVR-microcontroller-ATxmega16D4-32D4-64D4-128D4_datasheet.pdf)<br />[ATXMEGA128D4-AU](http://www.atmel.com/Images/Atmel-8135-8-and-16-bit-AVR-microcontroller-ATxmega16D4-32D4-64D4-128D4_datasheet.pdf)|TQFP44*|TQFP44_10x10_atmel44A.kicad_mod
|[ATXMEGA16D4-MH](http://www.atmel.com/Images/Atmel-8135-8-and-16-bit-AVR-microcontroller-ATxmega16D4-32D4-64D4-128D4_datasheet.pdf)|ATXMEGA16D4, VQNF44, 16k Flash, 4k Boot, 2k SRAM, 1k EEPROM, JTAG|[ATXMEGA32D4-MH](http://www.atmel.com/Images/Atmel-8135-8-and-16-bit-AVR-microcontroller-ATxmega16D4-32D4-64D4-128D4_datasheet.pdf)<br />[ATXMEGA64D4-MH](http://www.atmel.com/Images/Atmel-8135-8-and-16-bit-AVR-microcontroller-ATxmega16D4-32D4-64D4-128D4_datasheet.pdf)<br />[ATXMEGA128D4-MH](http://www.atmel.com/Images/Atmel-8135-8-and-16-bit-AVR-microcontroller-ATxmega16D4-32D4-64D4-128D4_datasheet.pdf)|VQFN44*|VQFN44_7x7_amtel44M1.kicad_mod
|[AYBG1202W](http://akizukidenshi.com/catalog/g/gI-05678/)|Two color LED, Yellow and Green|||
|BITMAP_IMAGE|Bitmap image||Symbol_*<br />Icon_*|Icon_Nosuz.kicad_mod
|[BSS138](http://www.fairchildsemi.co.jp/ds/BS/BSS138.pdf)|Nch MOS-FET||SOT-23*|SOT-23_2N7002K.kicad_mod<br />SOT-23_IRLML6344.kicad_mod<br />SOT-23_BSS138.kicad_mod<br />SOT-23_IRLML6402.kicad_mod<br />SOT-23-5_NJM286x.kicad_mod
|[CONN_AVR_ISP](http://www.atmel.com/images/doc0943.pdf)|AVR ISP 6P terminal||AVR_ISP_*|AVR_ISP_2x03.kicad_mod<br />AVR_ISP_1x06.kicad_mod
|CP|Polarised capacitor||CP*<br />Elko*<br />TantalC*<br />C*elec<br />c_elec*<br />SMD*_Pol|CP_D5mm_F2mm.kicad_mod<br />CP_SMD_D4.kicad_mod<br />CP_SMD_D5.kicad_mod
|Cds|Cds||Cds*|Cds5mm.kicad_mod
|DIP_SW4|DIP SWITCH, 4 units||DIP8*|DIP8_2227MC-08.kicad_mod<br />DIP8_EDS104.kicad_mod
|DIP_SW5|DIP SWITCH, 5 units||DIP10*|DIP10_EDS105.kicad_mod
|DIP_SW8|DIP SWITCH, 8 units||DIP16*|
|[DS1307](http://akizukidenshi.com/download/ds/maxim/DS1307.pdf)|Real Time Clock||SOP-8*<br />SOIC-8_maxim-90-0096|SOIC-8_maxim-90-0096.kicad_mod
|[EX03](http://akizukidenshi.com/download/ds/etc/EXO3-12MHz.pdf)|Clock Crystal Oscillator||DIP8*<br />DIP8_2227MC-08|DIP8_2227MC-08.kicad_mod<br />DIP8_EDS104.kicad_mod<br />DIP8_2227MC-08.kicad_mod
|[FDC6305N](http://akizukidenshi.com/download/ds/fairchild/FDC6305N.pdf)|Dual Nch MOS-FET||SuperSOT-6*|SuperSOT-6_FDC6305N.kicad_mod
|[FT230SX](http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT230X.pdf)|USB to serail UART||SSOP-16*|SSOP-16_FT230XS.kicad_mod
|[FT231XQ](http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf)|USB to serial UART||QFN20*|
|[FT231XS](http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf)|USB to serail UART||SSOP-20*|SSOP-20_FT231X.kicad_mod
|[FT234XD](http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT234XD.pdf)|USB to serial UART||DFN12*|DFN12_FTDI.kicad_mod
|[FT240XS](http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT240X.pdf)|FTDI USB 8-BIT FIFO||SSOP-24*|SSOP-24_FT240XS.kicad_mod
|[IRLML6344](http://www.irf.com/product-info/datasheets/data/irlml6344pbf.pdf)|Nch MOS-FET||SOT-23*|SOT-23_2N7002K.kicad_mod<br />SOT-23_IRLML6344.kicad_mod<br />SOT-23_BSS138.kicad_mod<br />SOT-23_IRLML6402.kicad_mod<br />SOT-23-5_NJM286x.kicad_mod
|[IRLML6402](http://www.irf.com/product-info/datasheets/data/irlml6402pbf.pdf)|Pch MOS-FET||SOT-23*|SOT-23_2N7002K.kicad_mod<br />SOT-23_IRLML6344.kicad_mod<br />SOT-23_BSS138.kicad_mod<br />SOT-23_IRLML6402.kicad_mod<br />SOT-23-5_NJM286x.kicad_mod
|[KM-23YSGC](http://akizukidenshi.com/download/ds/kingbright/KM-23YSGC(Ver.6B).pdf)|Two color LED, Yellow and Green||SOT*|SOT-23_2N7002K.kicad_mod<br />SOT-23_IRLML6344.kicad_mod<br />SOT-23_BSS138.kicad_mod<br />SOT-23_IRLML6402.kicad_mod<br />SOT-23-5_NJM286x.kicad_mod<br />SOT-25_TAR5SBxx.kicad_mod
|LED_WITH_R|LED with R||LED-5MM<br />LED_w_R_5mm|LED_w_R_5mm.kicad_mod
|M68AF127B|1Mbit (128K x8), 5V Asynchronous SRAM||SO32*|SO32_STM_M68AF127B.kicad_mod
|[MAX31855](http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf)|Thermocouple-to-Digital Converter|MAX31855K<br />MAX31855J<br />MAX31855N<br />MAX31855T<br />MAX31855E<br />MAX31855R<br />MAX31855S|MAX-S8|MAX-S8.kicad_mod
|Mount_Hole|PCB Mounting Hole||HOLE-*|HOLE-M3.kicad_mod
|[NJM2865F33](http://semicon.njr.co.jp/jpn/PDF/NJM2865_NJM2866_J.pdf)|LDO Regulator, +3.3V 100 mA||SOT-23-5*|SOT-23-5_NJM286x.kicad_mod
|[NJM2866F33](http://semicon.njr.co.jp/jpn/PDF/NJM2865_NJM2866_J.pdf)|LDO Regulator, +3.3V 100 mA||SOT-23-5*|SOT-23-5_NJM286x.kicad_mod
|OSL40562|7segment LED, common cathode|OSL40562-LYA<br />OSL40562-LR<br />OSL40562-LB<br />OSL40562-LRA<br />OSL40562-LG<br />OSL40562-LW|OSL40562|OSL40562.kicad_mod
|[OSTB0603C1C-A](http://akizukidenshi.com/download/ds/optosupply/OSTB0603C1C-A.pdf)|LED RGB Anode common||OSTB0603C1C-A|OSTB0603C1C-A.kicad_mod
|[OSxx1608](http://akizukidenshi.com/download/ds/optosupply/OSXX1608C1A_ver.a.6.pdf)|LED|OSYG1608<br />OSYL1608<br />OSHR1608<br />OSBL1608<br />OSWT1608<br />OSOR1608|1608<br />D_1608*|1608_OSYL1608.kicad_mod<br />1608_OSxx1608.kicad_mod
|[PCC-OST-SMP-K](http://strawberry-linux.com/pub/PCC-OST-SMP.pdf)|Thermocouple Connector, TypeK||PCC-*|PCC-SMP-K.kicad_mod
|PIEZO_SOUNDER|Piezo sounder||PKLCS*<br />PKM*<br />SPT*|PKLCS1212E4001.kicad_mod<br />PKM13EPYH4000-A0.kicad_mod
|PL-IRM0101|Infrared Receiver Module|PL-IRM1261<br />PL-IRM2121<br />PL-IRM2161<br />OSRB38C9AA|PL-IRM*|PL-IRM0101.kicad_mod
|Photo_transitor|Photo transistor|NJL7302L-F3|NJL7302L*|NJL7302L-F3.kicad_mod
|[RN4020](http://www.microchip.com/wwwproducts/Devices.aspx?product=RN4020)|Bluetooth Low Energy Module||RN4020|RN4020.kicad_mod
|[RN42](http://www.microchip.com/wwwproducts/Devices.aspx?product=RN42)|Bluetooth 2.1+EDR module||RN42|RN42.kicad_mod
|[SG8002DC](http://akizukidenshi.com/download/SG-8002DC.pdf)|crystal oscillator, 5V||DIP8*<br />DIP8_2227MC-08|DIP8_2227MC-08.kicad_mod<br />DIP8_EDS104.kicad_mod<br />DIP8_2227MC-08.kicad_mod
|[SHT30-DIS](http://www.sensirion.com/fileadmin/user_upload/customers/sensirion/Dokumente/Humidity/Sensirion_Humidity_SHT3x_Datasheet_digital.pdf)|Humidity sensor, Sensirion|SHT31-DIS|DFN-8*|DFN-8_SHT-3x-DIS.kicad_mod
|SLIDE_SWITCH_2-3|slide switch, 6P|SSSS213202|SSSS213202|SSSS213202.kicad_mod
|SLIDE_SWITCH_6P|slide switch, 6P|IS-2235|IS-2235|IS-2235.kicad_mod
|SO1602A|OLED Charactor Display, I2C||SO1602A|SO1602A.kicad_mod
|[Si7020](http://www.silabs.com/Support%20Documents/TechnicalDocs/Si7020.pdf)|Humidity sensor, Silicon Labs|Si7006<br />Si7021|DFN-6*|DFN-6_Si70xx.kicad_mod
|[TAR5SB33](http://www.semicon.toshiba.co.jp/info/docget.jsp?type=datasheet&lang=en&pid=TAR5SB33)|LDO Regulator, +3.3V 200 mA||SOT-25|SOT-25_TAR5SBxx.kicad_mod
|Tactile_SW_4P|Push Button|SKRPACE010<br />TSHA-T-2.5B2-19E<br />DTS-6-V|SKRPACE010<br />TSHA-T-2.5B2-19E<br />DTS-6-V|SKRPACE010.kicad_mod<br />TSHA-T-2.5B2-19E.kicad_mod<br />DTS-6-V.kicad_mod
|USB-micro-B|USB Micro B connector|ZX62R-B-5P|USB-micro-B_Hirose|USB-micro-B_Hirose.kicad_mod
|VBUS||||
|[Z84C00PEG](http://www.zilog.com/docs/z80/ps0178.pdf)|Zilog CMOS Z80 CPU|TMPZ84C00AP<br />TMPZ84C00AM|DIP-40*|DIP-40_Z84C00.kicad_mod
|[Z8S180](http://www.zilog.com/docs/z180/z8s180ps.pdf)|Zilog Z8S180 CPU||QFP80*|QFP80_Z8S180.kicad_mod

### コンポーネントライブラリで参照されなかったフットプリント
* 2DC-0005X100.kicad_mod
* 5.05mm_RXEF020.kicad_mod
* CH243-2032LF.kicad_mod
* CH25-2032LF.kicad_mod
* CH74-2032LF.kicad_mod
* CH7410_2032LF.kicad_mod
* C_1608.kicad_mod
* C_2012.kicad_mod
* C_2012_Large.kicad_mod
* C_F5mm.kicad_mod
* DIP28_Atmel28P3.kicad_mod
* Diode-PMDU_RB160M-30.kicad_mod
* FC-255.kicad_mod
* HC-49_S_THD.kicad_mod
* LED_5mm.kicad_mod
* LED_OSI5LAS1C1A.kicad_mod
* OPEN-BRIDGE.kicad_mod
* Pin_Header_Angled_2x07.kicad_mod
* Pin_Header_Angled_2x08.kicad_mod
* Pin_Header_Straight_1x02.kicad_mod
* Pin_Header_Straight_1x03.kicad_mod
* Pin_Header_Straight_1x05.kicad_mod
* Pin_Header_Straight_Thin_1x02.kicad_mod
* Pin_Header_Straight_Thin_1x03.kicad_mod
* Pin_Header_Straight_Thin_1x04.kicad_mod
* Pin_Header_Straight_Thin_1x06.kicad_mod
* Pin_Header_Straight_Thin_1x07.kicad_mod
* Pin_Header_Straight_Thin_1x09.kicad_mod
* Pin_Header_Straight_Thin_1x12.kicad_mod
* Pin_Header_Straight_Thin_1x14.kicad_mod
* Pin_Header_Straight_Thin_1x19.kicad_mod
* QFP-64_14x14_Atmel64A-1.00.kicad_mod
* R_1608.kicad_mod
* R_F10mm.kicad_mod
* R_F14mm_1W.kicad_mod
* Socket_Strip_Straight_1x02.kicad_mod
* Socket_Strip_Straight_1x03.kicad_mod
* Socket_Strip_Straight_1x04.kicad_mod
* Socket_Strip_Straight_1x06.kicad_mod
* Socket_Strip_Straight_1x09.kicad_mod
* Socket_Strip_Straight_1x14.kicad_mod
* Socket_Strip_Straight_2x07.kicad_mod
* Socket_Strip_Straight_2x08.kicad_mod
* TB401a-1-2-E.kicad_mod

## 注意

* 一部のコンポーネントとフットプリントは、KiCadに含まれる（配布されている）物を修正したものです。
* コンポーネントとライブラリーは、KiCad 4.0以降のフォーマットになっています。これ以前のKiCadでは使用できません。
* データシートを参照して作成しただけで実際に使用したことがないコンポーネントとフットプリントも含まれています。使用前には実物の形状にあっているか確認してください。

