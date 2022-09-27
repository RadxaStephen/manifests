<?xml version="1.0" encoding="UTF-8"?>
<manifest>

  <remote name="rk" fetch="../../"/>
  <default remote="rk" sync-j="4"/>

  <include name="include/px30_doc.xml" />
  <include name="common/linux5.10.xml" />

  <project name="linux/device/rockchip" path="device/rockchip" revision="refs/tags/linux-5.10-gen-rkr3.3">
    <linkfile src="common/mkfirmware.sh" dest="mkfirmware.sh"/>
    <linkfile src="common/build.sh" dest="build.sh"/>
    <linkfile src="common/rkflash.sh" dest="rkflash.sh"/>
    <linkfile src="px30" dest="device/rockchip/.target_product"/>
  </project>
  <project name="linux/external/camera_engine_rkisp" path="external/camera_engine_rkisp" revision="refs/tags/linux-5.10-gen-rkr3.3" clone-depth="1"/>
  <project name="linux/external/slt_gpu_light" path="external/slt_gpu_light" revision="refs/tags/linux-5.10-gen-rkr3.3"/>
  <project name="linux/tools" path="tools" revision="refs/tags/linux-5.10-gen-rkr3.3" clone-depth="1">
    <linkfile src="windows/RKDevTool/RKDevTool_Release/px30-config.cfg" dest="tools/windows/RKDevTool/RKDevTool_Release/config.cfg"/>
    <linkfile src="windows/RKDevTool/rockdev/px30-package-file" dest="tools/windows/RKDevTool/rockdev/package-file"/>
    <linkfile src="windows/RKDevTool/rockdev/px30-mkupdate.bat" dest="tools/windows/RKDevTool/rockdev/mkupdate.bat"/>
    <linkfile src="linux/Linux_Pack_Firmware/rockdev/px30-mkupdate.sh" dest="tools/linux/Linux_Pack_Firmware/rockdev/mkupdate.sh"/>
    <linkfile src="linux/Linux_Pack_Firmware/rockdev/px30-package-file" dest="tools/linux/Linux_Pack_Firmware/rockdev/package-file"/>
  </project>
</manifest>
