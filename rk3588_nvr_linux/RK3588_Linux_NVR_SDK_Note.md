# RK3588 NVR Linux SDK Note

---

**Versions**

[TOC]

---

## rk3588_linux_nvr_release_v1.1.0_20220418.xml Note

| 序号 | 更新简要描述                           | 详细描述                                                     | 备注     |
| ---- | -------------------------------------- | ------------------------------------------------------------ | -------- |
| 1    | 修复usb3phy进入挂起模式                | 【问题描述】在uboot下如果usb phy进入挂起模式，会导致内核初始化phy失败<br/>【原因分析】uboot下usb phy进入挂起模式<br/>【解决方法】增加判断不让usb phy进入挂起<br/>【主要修改文件】<br/>uboot：drivers/usb/dwc3/core.c | 必须更新 |
| 2    | 支持低温电压自动调节，增强低温稳定性   | 【问题描述】针对低温烤机场景，增加低温判断下动态调整dvfs电压功能，提升稳定性<br/>【原因分析】低温下，一些机器可能存在电压比较临界导致低温下长时间烤机容易出现异常<br/>【解决方法】根据温控机制判断进入低温动态调整dvfs，保证稳定性<br/>【主要修改文件】<br/>kernel: arch/arm64/boot/dts/rockchip/rk3588s.dtsi<br/>kernel: drivers/soc/rockchip/rockchip_system_monitor.c | 必须更新 |
| 3    | 更新mipi显示驱动及vop3 clk配置         | 【问题描述】修复打开mipi显示（dsi1）并绑定vp3配置下，部分分辨率不支持问题和切换分辨率失败问题<br/>【原因分析】vp3 clk和mipi驱动dsi配置不对<br/>【解决方法】1.使用aupll，调整vp3 clk配置支持更多分辨率<br/>2.修改mipi 驱动配置和切换分辨率场景判断<br/>【主要修改文件】<br/>kernel：arch/arm64/boot/dts/rockchip/<br/>rivers/clk/rockchip/clk-rk3588.c<br/>drivers/gpu/drm/rockchip/ | 必须更新 |
| 4    | 打开evb1版型 hdmi logo配置             | 【问题描述】打开evb1版型 hdmi logo配置，支持hdmi0和hdmi1 logo显示 <br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel：arch/arm64/boot/dts/rockchip/ | 必须更新 |
| 5    | 添加nvr demo1 v21 板型 dts支持         | 【问题描述】添加nvr demo1 v21 板型 dts支持 <br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel：arch/arm64/boot/dts/rockchip/ | 必须更新 |
| 6    | 修复低温下reboot烤机emmc初始化失败问题 | 【问题描述】低温长时间烤机发现个别机器，低温下reboot测试会出现读数据出错导致开机异常<br/>【原因分析】低温下HS400 mode读数据出错<br/>【解决方法】1.切换到hs200<br/>2.关掉RX clock inverter<br/>3.添加retry操作<br/>【主要修改文件】<br/>uboot：drivers/mmc/ | 必须更新 |
| 7    | HDMI logo功能支持                      | 【问题描述】v0.9.0版本hdmi logo功能缺失，需要在uboot和kernel两部分添加支持<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>uboot：arch/arm/include/asm/arch-rockchip/cru_rk3588.h<br/>             common/edid.c<br/>             configs/rk3588_defconfig<br/>             drivers/clk/rockchip/clk_rk3588.c<br/>             drivers/video/drm/<br/>             include/<br/>kernel：arch/arm64/boot/dts/rockchip/<br/>              drivers/gpu/drm/<br/>              drivers/phy/rockchip/phy-rockchip-samsung-hdptx-hdmi.c | 必须更新 |
| 8    | 调整nvr板型pcie3.0初始化延时           | 【问题描述】低温烤机发现个别机器易出现pcie 3.0初始化失败导致异常问题<br/>【原因分析】默认dts配置延时余量不够<br/>【解决方法】调整余量<br/>【主要修改文件】<br/>kernel：arch/arm64/boot/dts/rockchip/ | 必须更新 |
| 9    | 修复hdmi接一些显示器无声音问题         | 【问题描述】早先发布版本中发现hdmi接显示器无法输出声音问题<br/>【原因分析】未添加针对接显示器的音频判断处理<br/>【解决方法】添加hdmi接显示器场景的音频处理<br/>【主要修改文件】<br/>kernel：drivers/gpu/drm/bridge/synopsys/<br/>include/drm/bridge/dw_hdmi.h | 必须更新 |
| 10   | 支持更多hdmi分辨率                     | 【问题描述】老版本hdmi驱动中仅支持指定分辨率列表，需要增加支持自动识别计算clk以适配所有支持的分辨率功能<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/phy/rockchip/phy-rockchip-samsung-hdptx-hdmi.c<br/>drivers/gpu/drm/bridge/synopsys/ | 必须更新 |
| 11   | 修复开机完成后再接入HDMI无logo显示问题 | 【问题描述】dp logo显示关闭的情况下，开机完成后再接入HDMI无logo显示<br/>【原因分析】内核logo显示阶段没有添加强制输出判断，走非强制输出流程判断hdmi未接入不显示流程<br/>【解决方法】调整dp和hdmi logo显示流程，完善对强制输出的判断<br/>【主要修改文件】<br/>kernel: drivers/gpu/drm/rockchip/<br/>u-boot: drivers/video/drm/dw-dp.c | 必须更新 |
| 12   | 更新gpu驱动版本到g11p0-01eac0          | 【问题描述】更新gpu驱动版本<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/gpu/arm/bifrost/<br/>kernel: drivers/base/arm/<br/>**build: rootfs/lib/firmware/mali_csffw.bin** | 必须更新 |
| 13   | bl31更新到v1.19                        | 【问题描述】rkbin工程bl31更新到v1.19版本，修复开启gzip压缩模式启动失败问题等，提升稳定性<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>rkbin：bin/rk35/rk3588_bl31_v1.19.elf<br/>RKTRUST/RK3588TRUST.ini | 必须更新 |
| 14   | 8k:支持avi version 3                   | 【问题描述】优化8K hdmi电视兼容性,添加avi version 3<br/>【原因分析】早期版本hdmi驱动不支持avi version 3配置<br/>【解决方法】hdmi驱动添加支持avi version 3配置<br/>【主要修改文件】<br/>kernel: drivers/gpu/drm/ | 必须更新 |
| 15   | 修复dp多屏异显切换烤机概率无显示问题   | 【问题描述】dp显示参与的多屏异显切换烤机中发现出现概率dp会无显示<br/>【原因分析】disable dp情况，会概率出现dp控制器状态异常情况<br/>【解决方法】disable dp时做reset dp控制器的处理<br/>【主要修改文件】<br/>kernel: drivers/gpu/drm/rockchip/dw-dp.c | 必须更新 |
| 16   | 8k显示问题修复                         | 【问题描述】8k分辨率切换黑屏和三屏显示死锁问题<br/>【原因分析】显示驱动配置异常<br/>【解决方法】驱动修复<br/>【主要修改文件】<br/>kernel：drivers/gpu/drm/rockchip/<br/>drivers/phy/rockchip/ | 必须更新 |
| 17   | npu驱动更新到0.7.0                     | 【问题描述】npu驱动更新，调整npu电源控制配置<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel：drivers/rknpu/ | 必须更新 |
| 18   | rga驱动更新                            | 【问题描述】rga驱动更新，完善功能与接口<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel：drivers/video/rockchip/rga3/ | 必须更新 |
| 19   | mpp驱动更新                            | 【问题描述】mpp驱动更新，完善编解码需求<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel：drivers/video/rockchip/mpp/ | 必须更新 |
| 20   | 多媒体MPI版本更新到V1.5.1              | 【问题描述】多媒体MPI版本更新到V1.5.1<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>build/app/RKMPI_Release/ | 必须更新 |

## rk3588_linux_nvr_release_v1.0.0_20220304.xml Note

```
- The first release version
```

