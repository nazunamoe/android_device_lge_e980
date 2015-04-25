#!/sbin/sh

rm -rf /tmp/loki
mkdir /tmp/loki

if [ "$1" = "/dev/block/platform/msm_sdcc.1/by-name/boot" ]; then
	echo "Loking internal boot.img"
	dd if=/dev/block/platform/msm_sdcc.1/by-name/boot of=/tmp/loki/boot.img
	dd if=/dev/block/platform/msm_sdcc.1/by-name/aboot of=/tmp/loki/aboot.img
	/sbin/loki_tool patch boot /tmp/loki/aboot.img /tmp/loki/boot.img /tmp/loki/boot.lok || exit 1
	/sbin/loki_tool flash boot /tmp/loki/boot.lok || exit 1
	rm -rf /tmp/loki
	exit 0
else
	echo "No need to loki secondary boot.img"
	exit 0
fi


