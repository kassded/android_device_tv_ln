#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/tcl/t982_ar31a8
ALLOW_MISSING_DEPENDENCIES := true

# A/B
AB_OTA_UPDATER := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true

AB_OTA_PARTITIONS += \
    system_ext \
    recovery \
    vendor \
    vbmeta \
    odm \
    system \
    boot \
    vbmeta_system \
    product

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# DRM HAL
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.4-service.clearkey \
    android.hardware.drm@1.3-service.widevine

PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service \
    android.hardware.health@2.1-service

# Boot control HAL
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-impl.recovery \
    android.hardware.boot@1.0-service \
    bootctrl.sc2 \
    bootctrl.sc2.recovery \

PRODUCT_PACKAGES_DEBUG += \
    bootctl

