#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11022336 186bba2300ecc1dea4cf6d0e79d11d3f3d1ff0dc 7739392 f047f19485a4790844fa1ab11554d71435074122
fi

if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:11022336:186bba2300ecc1dea4cf6d0e79d11d3f3d1ff0dc; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:7739392:f047f19485a4790844fa1ab11554d71435074122 EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery 186bba2300ecc1dea4cf6d0e79d11d3f3d1ff0dc 11022336 f047f19485a4790844fa1ab11554d71435074122:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
