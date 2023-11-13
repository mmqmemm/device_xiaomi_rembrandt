#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/plato

# Inherit from mt6895-common
include device/xiaomi/mt6895-common/BoardConfigCommon.mk

# DTBO
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/dtbo.img

# Display
TARGET_SCREEN_DENSITY := 480

# Inherit the proprietary files
include vendor/xiaomi/plato/BoardConfigVendor.mk
