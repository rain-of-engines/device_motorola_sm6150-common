#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AB Partitions
AB_OTA_PARTITIONS += \
    product

ifeq ($(TARGET_USES_RECOVERY_PARTITION),true)
AB_OTA_PARTITIONS += recovery
endif

# Crypto
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.dm_default_key.options_format.version=2 \
    ro.crypto.volume.metadata.method=dm-default-key \
    ro.crypto.volume.options=::v2

ifeq ($(filter %_hanoip,$(TARGET_PRODUCT)),)
# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab_dynamic.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom
endif

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage-fastbootd
