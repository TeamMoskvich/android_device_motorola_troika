
#
# Copyright (C) 2019 geiti94
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/motorola/troika_sprout
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := erd9610
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_SOC := exynos9610

# Platform
BOARD_VENDOR := motorola
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g72

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true
#TARGET_CPU_SMP := true
#ENABLE_CPUSETS := true
#ENABLE_SCHEDBOOST := true

# Kernel
#TARGET_KERNEL_ARCH       := arm64
#TARGET_KERNEL_HEADER_ARCH:= arm64
BOARD_KERNEL_CMDLINE	 := loop.max_part=7 buildvariant=user
#BOARD_KERNEL_CMDLINE     += skip_override androidboot.selinux=permissive
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image
BOARD_PREBUILT_SECOND := $(LOCAL_PATH)/prebuilt/Second
#BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/recovery_dtbo
BOARD_KERNEL_BASE        := 0x10000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_OFFSET      := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x00000000
BOARD_RAMDISK_OFFSET     := 0x00000000
BOARD_SECOND_OFFSET      := 0x00000000
#BOARD_INCLUDE_RECOVERY_DTBO := true

#TODO
BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE) --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --second_offset $(BOARD_SECOND_OFFSET) --second $(BOARD_PREBUILT_SECOND) --header_version 1

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 118974455808
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true #deprecated
BOARD_HAS_NO_SELECT_BUTTON := true #deprecated
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
RECOVERY_SDCARD_ON_DATA := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_NTFS_3G := true
TW_MAX_BRIGHTNESS := 100
TW_DEFAULT_BRIGHTNESS := "30"
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXTRA_LANGUAGES := true
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
ALLOW_MISSING_DEPENDENCIES=true

# A/B device flags
AB_OTA_UPDATER := false #off for now
#TARGET_NO_KERNEL := false

# Crypto
TW_INCLUDE_CRYPTO := false # Off for now
PLATFORM_VERSION := 9.0.0
PLATFORM_SECURITY_PATCH := 2019-12

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Android Verified Boot
#BOARD_AVB_ENABLE := true
#BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
#BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
#BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
#BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
