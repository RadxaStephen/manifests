# RK3588 NVR Linux SDK Note

---

**Versions**

[TOC]

---

## rk3588_linux_nvr_release_v1.4.0_20221021.xml Note

| 序号 | 更新简要描述                                       | 详细描述                                                     | 备注     |
| ---- | -------------------------------------------------- | ------------------------------------------------------------ | -------- |
| 1    | 更新显示驱动到最新，修复HDMI兼容性及8K问题等       | 【问题描述】显示驱动更新最新<br/>【原因分析】不涉及<br/>【解决方法】显示驱动更新<br/>【主要修改文件】<br/>u-boot: drivers/video/drm/<br/>kernel: drivers/gpu/drm | 必须更新 |
| 2    | 更新HDMIRX驱动到最新，修复部分HDMI-IN兼容问题      | 【问题描述】更新HDMIRX驱动到最新<br/>【原因分析】不涉及<br/>【解决方法】HDMIRX驱动更新<br/>【主要修改文件】<br/>kernel: drivers/media/platform/rockchip/hdmirx | 必须更新 |
| 3    | GPU驱动及固件更新到g13版本                         | 【问题描述】GPU驱动及固件更新到g13版本 <br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/gpu/arm/bifrost/<br/>build: rootfs.tar.gz(rootfs/lib/firmware/mali_csffw.bin) | 必须更新 |
| 4    | UBOOT更新，支持一些新特性，如双存储， 支持sata启动 | 【问题描述】UBOOT更新，支持一些新特性，如双存储， 支持sata启动 <br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>uboot: configs/rk3588-sata.config<br/>drivers/spi<br/>scripts/ | 必须更新 |
| 5    | RGA3驱动更新                                       | 【问题描述】rga3驱动更新到V1.2.18<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/video/rockchip/rga3/ | 必须更新 |
| 6    | NPU驱动更新                                        | 【问题描述】驱动更新到V0.8.2<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/rknpu/ | 必须更新 |
| 7    | SPI NAND驱动更新到最新，兼容更多颗粒               | 【问题描述】SPI NAND驱动更新<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/mtd/nand/spi/ | 必须更新 |
| 8    | DMA驱动更新，修复局部刷新接口问题                  | 【问题描述】dma驱动更新，修复局部刷新接口问题<br/>【原因分析】新增使用场景等未适配<br/>【解决方法】添加驱动更新支持<br/>【主要修改文件】<br/>kernel: drivers/dma-buf/heaps/ | 必须更新 |
| 9    | 修复概率REBOOT异常                                 | 【问题描述】个别机器出现开机EMMC识别异常<br/>【原因分析】uboot阶段驱动识别容量得到错误结果<br/>【解决方法】添加retry机制修复<br/>【主要修改文件】<br/>uboot: drivers/mmc/mmc.c | 必须更新 |
| 10   | 添加UAC功能支持                                    | 【问题描述】需要支持UAC功能<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>build： app/RKMPI_Release/<br/>kernel： arch/arm64/configs/rockchip_linux_defconfig<br/>include/linux/usb/ | 必须更新 |
| 11   | MPP驱动更新到最新，修复JPEG概率花屏问题等          | 【问题描述】JPEG概率花屏问题<br/>【原因分析】MPP驱动问题<br/>【解决方法】更新驱动修复<br/>【主要修改文件】<br/>kernel: drivers/video/rockchip/mpp/ | 必须更新 |
| 12   | BL31版本更新，支持待机唤醒功能、优化稳定性         | 【问题描述】BL31版本更新，支持待机唤醒共功能、优化稳定性<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>rkbin: bin/rk35/rk3588_bl31_v1.28.elf | 必须更新 |
| 13   | DDRBIN_TOOL版本更新                                | 【问题描述】ddrbin_tool版本更新到v1.11<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>rkbin: tools/ddrbin * | 必须更新 |
| 14   | 支持DP热拔插软件功能                               | 【问题描述】支持DP热拔插软件功能<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/gpu/drm/rockchip/dw-dp.c<br/>build: app/RKMPI_Release/ | 必须更新 |
| 15   | SATA、PCI PHY驱动更新                              | 【问题描述】更新驱动版本<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 必须更新 |
| 16   | USB驱动更新，修复个别U3口U盘无法读取问题等         | 【问题描述】USB驱动更新<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/usb/<br/>drivers/phy/rockchip/phy-rockchip-inno-usb2.c<br/>drivers/phy/rockchip/phy-rockchip-inno-usb3.c | 必须更新 |
| 17   | 多媒体MPI版本更新到V1.8.2                          | 【问题描述】多媒体MPI版本更新到V1.8.2<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>build: app/RKMPI_Release/ | 必须更新 |
| 18   | 修复CIF丢buff问题                                  | 【问题描述】vi一次还多个buffer，cif丢buffer的问题<br/>【原因分析】cif驱动处理不对<br/>【解决方法】驱动更新修复还多个buff情况<br/>【主要修改文件】<br/>kernel: drivers/media/platform/rockchip/cif | 必须更新 |
|      |                                                    |                                                              |          |

## rk3588_linux_nvr_release_v1.3.0_20220805.xml Note

| 序号 | 更新简要描述                                             | 详细描述                                                     | 备注     |
| ---- | -------------------------------------------------------- | ------------------------------------------------------------ | -------- |
| 1    | 修复U-Boot USB xHCI 控制器通信失败导致 U-Boot 卡住的问题 | 【问题描述】xHCI 控制器驱动传输失败时，引起U-Boot卡住<br/>【原因分析】1. xHCI驱动在处理传输异常时，可能会调用BUG()主动触发panic，导致U-Boot panic卡；<br/>2. xHCI驱动在prepare ring出错（EP_STATE_HALTED）时，会不断重复执行请求，尝试恢复，导致U-Boot卡在xHCI驱动中，无法进入Kernel<br/>【解决方法】xHCI驱动修复<br/>【主要修改文件】<br/>u-boot: drivers/usb/host/xhci-ring.c<br/>drivers/pinctrl/rockchip/pinctrl-rk3588.c | 必须更新 |
| 2    | 修复uboot下pcie初始化概率异常问题                        | 【问题描述】uboot 初始化 PCIE PHY 过程 panic<br/>【原因分析】PHY 初始化流程有冗余重复部分<br/>【解决方法】处理该冗余重复部分<br/>【主要修改文件】<br/>u-boot: drivers/pci/pcie_dw_rockchip.c |          |
| 3    | 修复HDMI音频异常无声音问题                               | 【问题描述】1. 先使能音频再使能HDMI，HDMI音频无声音<br/>2. 同时使能HDMI和音频，HDMI音频无声音<br/>3. 先使能HDMI，延时200ms后再使能音频，HDMI音频有声音<br/>【原因分析】HDMI音频需要等HDMI使能并且初始化流程走完再操作<br/>【解决方法】等待HDMI初始化完成，否则返回失败<br/>【主要修改文件】<br/>kernel: drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp-i2s-audio.c | 必须更新 |
| 4    | 优化HDMI PHY信号                                         | 【问题描述】不涉及 <br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/phy/rockchip/phy-rockchip-samsung-hdptx-hdmi.c | 必须更新 |
| 5    | HDMI使用软件traing方式，优化8k热拔插识别兼容性           | 【问题描述】8K热拔插场景接一些电视如长虹，概率出现不显示或显示异常问题，出现edid读取失败 <br/>【原因分析】信号问题<br/>【解决方法】改成软件方式traing，走协议流程<br/>【主要修改文件】<br/>kernel: drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 必须更新 |
| 6    | HDMI驱动更新，优化HDMI兼容性                             | 【问题描述】不涉及<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/gpu/drm/bridge/synopsys/<br/>arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi<br/>u-boot: drivers/video/drm/<br/>common/edid.c | 必须更新 |
| 7    | EVB板型默认打开dp0音频支持，vp3 clk使用aupll             | 【问题描述】evb板型不支持dp声卡，vp3显示clk多屏显示下不足<br/>【原因分析】evb板型dp声卡配置未打开，vp3显示clk多屏显示下不足<br/>【解决方法】dts配置打开dp0声音配置，vp3 clk使用aupll<br/>【主要修改文件】<br/>kernel: arch/arm64/boot/dts/rockchip/ | 必须更新 |
| 8    | DMA驱动更新，修复局部刷新接口问题                        | 【问题描述】dma驱动更新，修复局部刷新接口问题<br/>【原因分析】新增使用场景等未适配<br/>【解决方法】添加驱动更新支持<br/>【主要修改文件】<br/>kernel: drivers/dma-buf/heaps/ | 必须更新 |
| 9    | 修复概率reboot异常                                       | 【问题描述】pcie驱动更新支持debugfs后，个别机器出出现开机异常<br/>【原因分析】开机pcie的mem出现了不正常的自动上电，导致开启pd的上电时序异常，pd开启不成功<br/>【解决方法】对mem的供电进行手动复位<br/>【主要修改文件】<br/>rkbin: bin/rk35/rk3588_bl31_v1.22.elf<br/>kernel: drivers/soc/rockchip/pm_domains.c | 必须更新 |
| 10   | 多媒体MPI版本更新到V1.7.1                                | 【问题描述】多媒体MPI版本更新到V1.7.1<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>build/app/RKMPI_Release/ | 必须更新 |
| 11   | 修复使用logo分区开机bmp图片panic问题                     | 【问题描述】开机时uboot判断有logo分区且有图片场景出现panic异常<br/>【原因分析】resource_img中删除dtbs list操作的处理引入<br/>【解决方法】添加dtbs list的初始化，避免使用logo分区情况下删除操作导致panic<br/>【主要修改文件】<br/>u-boot: arch/arm/mach-rockchip/resource_img.c | 必须更新 |
| 12   | 修复强制输出分辨率设置1080p内核阶段显示异常问题          | 【问题描述】强制输出分辨率设置1080p内核阶段显示异常<br/>【原因分析】edid未读取到情况下驱动配置限制1024x768导致<br/>【解决方法】驱动限制修改支持到4096x4096<br/>【主要修改文件】<br/>kernel: drivers/gpu/drm/rockchip/rockchip_drm_logo.c |          |
| 13   | HDMI RX驱动相关更新最新，修复HDMI-IN兼容性等问题         | 【问题描述】不涉及<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/media/platform/rockchip/hdmirx/<br/> | 必须更新 |
| 14   | IT6161驱动更新，修复mipi2hdmi 720p等概率无输出问题       | 【问题描述】mipi2hdmi 720p等概率无输出问题<br/>【原因分析】IT6161驱动问题<br/>【解决方法】更新驱动规避<br/>【主要修改文件】<br/>kernel/: drivers/gpu/drm/bridge/ite-it6161.c<br/> | 必须更新 |
| 15   | GPU驱动更新                                              | 【问题描述】gpu驱动更新到最新g12p0-01eac0版本<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/gpu/arm/bifrost/<br/>build: rootfs.tar.gz | 必须更新 |
| 16   | RGA3驱动更新                                             | 【问题描述】rga3驱动更新到V1.2.15<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/video/rockchip/rga3/ | 必须更新 |
| 17   | USB驱动更新，修复type-c转dp设备兼容等问题                | 【问题描述】USB驱动更新<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/usb/<br/>drivers/phy/rockchip/phy-rockchip-inno-usb2.c<br/>drivers/phy/rockchip/phy-rockchip-inno-usb3.c | 必须更新 |
| 18   | PCIE驱动更新，支持debugfs                                | 【问题描述】PCIE驱动更新，支持debugfs<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/pci/ | 必须更新 |
| 19   | 更新CIF、ISP驱动                                         | 【问题描述】更新cif、isp驱动到最新v1.9.0，支持摄像头vi功能<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/media/platform/rockchip/cif/<br/>drivers/media/platform/rockchip/isp/ | 必须更新 |
| 20   | 同步拼接相关补丁合并                                     | 【问题描述】同步拼接方案补丁合并<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/clk/rockchip/<br/>arch/arm64/configs/rk3588_nvr.config<br/>u-boot: drivers/clk/rockchip/clk_rk3588.c | 必须更新 |
| 21   | NPU驱动更新,修复泄漏问题                                 | 【问题描述】驱动更新到V0.7.2-20220714<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: drivers/rknpu/ | 必须更新 |
| 22   | DDR更新到V1.09，提升兼容性，提升带宽利用率               | 【问题描述】ddr更新V1.09<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>rkbin: bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v1.09.bin | 必须更新 |
| 23   | EVB添加dp0和spdif0声卡配置                               | 【问题描述】EVB添加dp0和spdif0声卡配置<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel: arch/arm64/boot/dts/rockchip/ | 必须更新 |
| 24   | 修复NVR多声卡同时输出情况下，某个声卡概率断音问题        | 【问题描述】NVR多声卡同时输出情况下，某个声卡概率断音问题<br/>【原因分析】驱动判断错误<br/>【解决方法】驱动修复<br/>【主要修改文件】<br/>kernel: sound/core/pcm_dmaengine.c | 必须更新 |

## rk3588_linux_nvr_release_v1.2.0_20220610.xml Note

| 序号 | 更新简要描述                                     | 详细描述                                                     | 备注     |
| ---- | ------------------------------------------------ | ------------------------------------------------------------ | -------- |
| 1    | 修复DP-spdif输出声卡卡死以及断音问题             | 【问题描述】DP配置spdif播放音频出现断音以及声卡卡死问题<br/>【原因分析】dma以及mclk配置异常<br/>【解决方法】修复dma配置，重新计算mclk配置<br/>【主要修改文件】<br/>kernel：drivers/dma/pl330.c<br/>sound/soc/rockchip/rockchip_spdif.c | 必须更新 |
| 2    | 支持uvc功能                                      | 【问题描述】旧版本驱动默认没有支持uvc功能，需要添加驱动和应用支持<br/>【原因分析】不涉及<br/>【解决方法】添加usb驱动更新及uvc配置支持<br/>添加基于mpi接口的uvc应用demo实现uvc功能<br/>【主要修改文件】<br/>kernel: arch/arm64/configs/rk3588_nvr.config<br/>drivers/media/common/videobuf2/videobuf2-v4l2.c<br/>drivers/media/v4l2-core/v4l2-ioctl.c<br/>drivers/usb/<br/>build:app/RKMPI_Release/example/rk_mpi_uvc |          |
| 3    | 以太网驱动默认禁用SPH feature                    | 【问题描述】tftp传输测试时发现，如果测试包超过6K bytes，会出现异常，如tftp -b 8192 出现数据错误问题<br/>【原因分析】默认驱动打开SPH feature导致包超过6k时，流程不对<br/>【解决方法】默认关闭SPH feature，驱动添加对应判断处理<br/>【主要修改文件】<br/>kernel：drivers/net/ethernet/ | 必须更新 |
| 4    | 修复分辨率或者同异显切换导致iommu Page fault异常 | 【问题描述】开启wbc后，分辨率或者同异显切换内核出现iommu Page fault异常，导致显示黑屏等问题 <br/>【原因分析】wbc切换过程中配置异常<br/>【解决方法】修改wbc正确配置<br/>【主要修改文件】<br/>kernel：drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 必须更新 |
| 5    | 修复uboot下概率读取emmc数据异常问题              | 【问题描述】uboot下调用mmc read 读取emmc数据到内存，然后md.l显示，前面64个字节总是错的 <br/>【原因分析】sdhci驱动里面在SDHCI_PRESENT_STATE报告时清除寄存器SDHCI_CMD_INHIBIT会导致db410c出现未定义的行为<br/>【解决方法】在 CMD_INHIBIT 期间不要清除 SDHCI_INT_STATUS 寄存器<br/>【主要修改文件】<br/>uboot：drivers/mmc/sdhci.c | 必须更新 |
| 6    | 默认打开V21板型mipi2hdmi口配置，支持ite-it6161   | 【问题描述】默认对外发布版本sdk不支持v21板型mipi2hdmi口使能，无ite-it6161驱动<br/>【原因分析】无ite-it6161驱动<br/>【解决方法】添加ite-it6161初版驱动，默认使能v21 nvr demo板型dsi1口显示<br/>【主要修改文件】<br/>kernel：arch/arm64/configs/rk3588_nvr.config<br/>drivers/gpu/drm/bridge/ | 必须更新 |
| 7    | 更新dvfs配置加强稳定性                           | 【问题描述】gpu变频场景下，低概率mpi高负载场景下个别机器gpu timeout异常问题<br/>【原因分析】个别机器电压余量不够<br/>【解决方法】调整dvfs配置<br/>【主要修改文件】<br/>rkbin：bin/rk35/rk3588_bl31_v1.21.elf<br/>kernel：arch/arm64/boot/dts/rockchip/ | 必须更新 |
| 8    | 同步hdmi驱动版本支持debugfs节点打印              | 【问题描述】旧版本sdk hdmi驱动不支持debug hdmi controller和status，确认hdmi状态不方便，需要添加支持节点打印和输入供调试<br/>【原因分析】不涉及<br/>【解决方法】添加驱动更新支持<br/>【主要修改文件】<br/>kernel：drivers/gpu/drm/bridge/synopsys/ | 必须更新 |
| 9    | 修复分辨率切换导致vsync异常                      | 【问题描述】分辨率切换同时开关wbc功能，导致vsync上报时间和配置的帧率不一致，rockit vsync异常log一直打印<br/>【原因分析】wbc配置流程不对<br/>【解决方法】根据芯片修改wbc配置<br/>【主要修改文件】<br/>kernel：drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 必须更新 |
| 10   | 多媒体MPI版本更新到V1.6.4                        | 【问题描述】多媒体MPI版本更新到V1.6.4<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>build/app/RKMPI_Release/ | 必须更新 |
| 11   | bl31版本更新到V1.22，提升芯片稳定性              | 【问题描述】bl31版本更新到V1.22<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>rkbin/bin/rk35/rk3588_bl31_v1.22.elf | 必须更新 |
| 12   | 3A支持                                           | 【问题描述】app添加3A后台服务，供摄像头项目使用<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>build/app/rkaiq_3A_server |          |
| 13   | libc-2.33库更新，合并安全补丁                    | 【问题描述】libc-2.33库更新，修复漏洞CVE-2021-35942/CVE-2021-38604/CVE-2022-23218/CVE-2022-23219<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>build/rootfs.tar.gz | 必须更新 |
| 14   | 修复8k输出下接4k显示器显示异常问题               | 【问题描述】8k输出下接4k显示器显示出现异常，预期应该显示黑屏<br/>【原因分析】上层强制设置8k输出，显示器不支持下，底层驱动还是走了显示输出流程，导致出现显示异常<br/>【解决方法】驱动判断如果显示器不支持8k，应该强制退出不显示，但vop需要正常工作<br/>【主要修改文件】<br/>kernel/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 必须更新 |
| 15   | ddr bin更新到V1.07，提升稳定性                   | 【问题描述】ddr bin更新到V1.07<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>rkbin/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v1.07.bin | 必须更新 |
| 16   | rga3驱动更新到V1.2.14                            | 【问题描述】rga3驱动更新到V1.2.14<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel：drivers/video/rockchip/rga3/ | 必须更新 |

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
| 16   | 8k及多屏显示切换问题修复               | 【问题描述】8k分辨率切换黑屏和三屏显示死锁问题<br/>【原因分析】显示驱动配置异常<br/>【解决方法】驱动修复<br/>【主要修改文件】<br/>kernel：drivers/gpu/drm/rockchip/<br/>drivers/phy/rockchip/ | 必须更新 |
| 17   | npu驱动更新到0.7.0                     | 【问题描述】npu驱动更新，调整npu电源控制配置<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel：drivers/rknpu/ | 必须更新 |
| 18   | rga驱动更新                            | 【问题描述】rga驱动更新，完善功能与接口<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel：drivers/video/rockchip/rga3/ | 必须更新 |
| 19   | mpp驱动更新                            | 【问题描述】mpp驱动更新，完善编解码需求<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>kernel：drivers/video/rockchip/mpp/ | 必须更新 |
| 20   | 多媒体MPI版本更新到V1.5.1              | 【问题描述】多媒体MPI版本更新到V1.5.1<br/>【原因分析】不涉及<br/>【解决方法】不涉及<br/>【主要修改文件】<br/>build/app/RKMPI_Release/ | 必须更新 |

## rk3588_linux_nvr_release_v1.0.0_20220304.xml Note

```
- The first release version
```

