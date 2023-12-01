#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from mt6895-common
$(call inherit-product, device/xiaomi/mt6895-beanpod/beanpod.mk)
$(call inherit-product, device/xiaomi/mt6895-common/mt6895.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio_device.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_device.xml

# Overlay
PRODUCT_PACKAGES += \
    FrameworksResOverlayPlato \
    SystemUIOverlayPlato

PRODUCT_ENFORCE_RRO_TARGETS := *

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Shipping API Level
PRODUCT_SHIPPING_API_LEVEL := 31

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/plato/plato-vendor.mk)
