#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tcl/t982_ar31a8

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from t982_ar31a8 device
$(call inherit-product, device/tcl/t982_ar31a8/device.mk)

PRODUCT_DEVICE := t982_ar31a8
PRODUCT_NAME := twrp_t982_ar31a8
PRODUCT_BRAND := TCL
PRODUCT_MODEL := t982_ar31a8
PRODUCT_MANUFACTURER := tcl

PRODUCT_GMS_CLIENTID_BASE := android-droid-tv

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="t982_ar31a8-user 11 RQ3A.210705.001 2023110700 release-keys"

BUILD_FINGERPRINT := TCL/t982_ar31a8/t982_ar31a8:11/RQ3A.210705.001/2023110700:user/release-keys
