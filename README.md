# ASUS-X550VC-Hackintosh
华硕 X550VC OpenCore EFI文件 默认机型为MacBookPro11,1 已去除三码

支持Mac Os 10.13以上系统 

经过验证以下机型都能正常运行（三代i5CPU的）

A450V、K450V、X450V

A550V、X550V

![OpenCore](https://img.shields.io/badge/OpenCore-v0.6.7-green)
![MacOS](https://img.shields.io/badge/Mac%20OS-v10.13.6%20(17G66)-blue)

![Screenshot](https://raw.githubusercontent.com/a520ass/ASUS-X550VC-Hackintosh/master/pic/macOS11.png)

![Screenshot](https://raw.githubusercontent.com/a520ass/ASUS-X550VC-Hackintosh/master/pic/macOS1014.png)

## **硬件信息**
|     Name     |        Model        |
| :----------: | :-----------------: |
|     CPU      |      Intel(R) Core(TM) i5-3230M CPU @ 2.60GHz      |
|     IGPU     |      Intel HD Graphics 4000      |
|     GPU      |      NVIDIA 720M      |
|     RAM      |      4GB onboard + 4GB DDR3      |
|     Storage  |      Samsung SSD 850 PRO 128GB      |
|     Network  |      Atheros AR9485 802.11b/g/n Wireless Network|
|     Display  |      15.6" HD 60Hz, 1366 x 768      |
|     Sound    |      Realtek ALC270      |
|     Ethernet |      Realtek RTL8168/8111 PCI-E Gigabit Ethernet      |

## **BIOS设置**
* `Advanced - USB Configuration - XHCI Pre-Boot Mode` **Enabled**

* `Advanced - USB Configuration - Legacy USB Support` **Enabled**

* `Boot - Launch CSM` **Disabled**

* `Security - Secure Boot Control` **Disabled**

  ~~关闭Launch CSM 才能开机不会扁苹果，如果没有该选项，可以使用modGRUBShell.efi 进行修改，不同bios版本变量不同，不能直接使用~~

  ~~华硕x550vc  bios版本 x550vc.222 的csm参数如下~~
  
  ~~查询csm setup_var_3 0x275~~
  
  ~~关闭csm    setup_var 0x275 0x00~~
  
  没有Launch CSM 选项的机器，可以编程器刷入BIOS文件夹下的bios文件，x550vc的主板通用


## **引用**
* https://applelife.ru/threads/asus-x550vc-i-asus-x550cc.41752/
* https://github.com/FawenYo/ASUS-X550VC-Hackintosh
* https://github.com/FIRSTPLATO/opencore-atheros-kext  10.14以上的AR9485驱动
* https://github.com/athlonreg/Enable-AR956X-AR946X-AR9485-in-your-hacintosh 10.13的AR9485驱动