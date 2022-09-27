#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/sdm450-common

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_USES_64_BIT_BINDER := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/samsung/sdm450

# Image
BOARD_BOOT_HEADER_NAME := SRPSJ30A003
BOARD_BOOT_HEADER_VERSION := 2
BOARD_DTB_OFFSET := 0x101F00000
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78af000 androidboot.usbconfigfs=true vmalloc=300M loop.max_part=7
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SECOND_OFFSET := 0x80000000
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_MKBOOTIMG_ARGS := --dtb_offset $(BOARD_DTB_OFFSET) --kernel_offset $(BOARD_KERNEL_OFFSET) --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --board $(BOARD_BOOT_HEADER_NAME) --header_version $(BOARD_BOOT_HEADER_VERSION)

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 16777216
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 82694144
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 3221225472
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 3229614080
TARGET_COPY_OUT_PRODUCT := system/product
TARGET_COPY_OUT_SYSTEM_EXT := system/system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Platform
BOARD_VENDOR := samsung

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Root!
BOARD_ROOT_EXTRA_SYMLINKS += /vendor/lib/dsp:/dsp
BOARD_ROOT_EXTRA_SYMLINKS += /mnt/vendor/persist:/persist
BOARD_ROOT_EXTRA_SYMLINKS += /vendor/firmware_mnt:/firmware

# SEPolicy
BOARD_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy

# Treble
BOARD_VNDK_VERSION := current

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := 0
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_SYSTEM_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_SYSTEM_ADD_HASHTREE_FOOTER_ARGS += --hash_algorithm sha256
