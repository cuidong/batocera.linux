#!/bin/bash -e

# HOST_DIR = host dir
# BOARD_DIR = board specific dir
# BUILD_DIR = base dir/build
# BINARIES_DIR = images dir
# TARGET_DIR = target dir
# BATOCERA_BINARIES_DIR = batocera binaries sub directory

HOST_DIR=$1
BOARD_DIR=$2
BUILD_DIR=$3
BINARIES_DIR=$4
TARGET_DIR=$5
BATOCERA_BINARIES_DIR=$6

mkdir -p "${BATOCRA_BINARIES_DIR}/boot/boot" || exit 1

cp "${BINARIES_DIR}/bzImage"         "${BATOCRA_BINARIES_DIR}/boot/boot/linux"           || exit 1
cp "${BINARIES_DIR}/initrd.gz"       "${BATOCRA_BINARIES_DIR}/boot/boot/"                || exit 1
cp "${BINARIES_DIR}/rootfs.squashfs" "${BATOCRA_BINARIES_DIR}/boot/boot/batocera.update" || exit 1

echo to be finished >&2
exit 1



# /boot
cp "${BOARD_DIR}/boot/syslinux.cfg" "${BINARIES_DIR/}/boot/syslinux.cfg" || exit 1

# get UEFI files
mkdir -p "${BINARIES_DIR}/EFI/syslinux" || exit 1
cp "${BOARD_DIR}/boot/syslinux.cfg" "${BINARIES_DIR/}/EFI/syslinux/syslinux.cfg" || exit 1

#cp "${BOARD_DIR}/genimage-boot.cfg" "${BINARIES_DIR}" || exit 1
#echo "creating ${BINARIES_DIR}/batocera-boot.img"
#genimage --rootpath="${TARGET_DIR}" --inputpath="${BINARIES_DIR}" --outputpath="${BINARIES_DIR}" --config="${BINARIES_DIR}/genimage-boot.cfg" --tmppath="${GENIMAGE_TMP}" || exit 1
#syslinux -i "${BINARIES_DIR}/batocera-boot.img" -d /boot/syslinux
#rm -rf "${GENIMAGE_TMP}" || exit 1
#cp "${BOARD_DIR}/genimage.cfg" "${BINARIES_DIR}" || exit 1
#echo "creating ${BATOCERA_BINARIES_DIR}/batocera.img"
#genimage --rootpath="${TARGET_DIR}" --inputpath="${BINARIES_DIR}" --outputpath="${BATOCERA_BINARIES_DIR}" --config="${BINARIES_DIR}/genimage.cfg" --tmppath="${GENIMAGE_TMP}" || exit 1
