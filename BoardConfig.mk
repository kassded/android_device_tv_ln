#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tcl/t982_ar31a8

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    system \
    boot \
    odm \
    vbmeta_system \
    product \
    system_ext \
    recovery \
    vendor \
    vbmeta
BOARD_USES_RECOVERY_AS_BOOT := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a55

TARGET_USES_64_BIT_BINDER := true

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := ohm
TARGET_NO_BOOTLOADER := true

# Graphics
BOARD_EGL_CFG := $(DEVICE_PATH)/egl.cfg
USE_OPENGL_RENDERER := true


# Display
TARGET_SCREEN_DENSITY := 240

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 3
#BOARD_KERNEL_CMDLINE := androidboot.dynamic_partitions=true androidboot.dtbo_idx=0 androidboot.boot_devices=soc/fe08c000.mmc use_uvm=1 twrpfastboot=1 buildvariant=eng
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_CONFIG := t982_ar31a8_defconfig
TARGET_KERNEL_SOURCE := kernel/tcl/t982_ar31a8

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
#TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
#BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)


# Partitions
#BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_BOOTIMAGE_PARTITION_SIZE := 50331648
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 50331648
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_SUPER_PARTITION_SIZE := 9126805504 # TODO: Fix hardcoded value
BOARD_SUPER_PARTITION_GROUPS := tcl_dynamic_partitions
BOARD_TCL_DYNAMIC_PARTITIONS_PARTITION_LIST := product system system_ext vendor odm
BOARD_TCL_DYNAMIC_PARTITIONS_SIZE := 9122611200 # TODO: Fix hardcoded value

# Platform
TARGET_BOARD_PLATFORM := sc2
TARGET_BOARD_PLATFORM_GPU := mali-g52mp2

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Security patch level
VENDOR_SECURITY_PATCH := 2021-08-01

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Debug
TARGET_USES_LOGD := true # 是否启用 logcat
TWRP_INCLUDE_LOGCAT := true
TWRP_EVENT_LOGGING := false

# TWRP Configuration
TW_THEME := landscape_hdpi
#TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN  #设置默认语言为简体中文
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
TW_IGNORE_MISC_WIPE_DATA := true  #是否在 wipe data 时忽略 misc

