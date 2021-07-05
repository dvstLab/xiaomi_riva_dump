#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:38346062:799b3a40271d4265cd6e8b8a05aa6c270f7e90ae; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:34137418:ec39abb19b421761a338ed8efcc347db348de57e EMMC:/dev/block/bootdevice/by-name/recovery 799b3a40271d4265cd6e8b8a05aa6c270f7e90ae 38346062 ec39abb19b421761a338ed8efcc347db348de57e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
