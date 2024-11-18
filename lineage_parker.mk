#
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from parker device
$(call inherit-product, device/motorola/parker/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_parker
PRODUCT_DEVICE := parker
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola One Zoom
PRODUCT_MANUFACTURER := motorola

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "motorola/parker_retail/parker:10/QPH30.29-Q3-28-13-10/d623:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=parker_retail \
    PRIVATE_BUILD_DESC="parker_retail-user 10 QPH30.29-Q3-28-13-10 d623 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-motorola
