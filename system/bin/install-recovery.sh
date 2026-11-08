#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:5316608:a38c6b9986fc120e155fe478a0764a1d802c0d11; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:4857856:4dc6997dbbe3cc4f0f1c7c9c943f43574ab33c72 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery a38c6b9986fc120e155fe478a0764a1d802c0d11 5316608 4dc6997dbbe3cc4f0f1c7c9c943f43574ab33c72:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
