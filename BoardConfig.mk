#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/plato

# Inherit from mt6895-common
include device/xiaomi/mt6895-beanpod/BoardConfig.mk
include device/xiaomi/mt6895-common/BoardConfigCommon.mk

# DTBO
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/dtbo.img

# Display
TARGET_SCREEN_DENSITY := 480

# Kernel Modules
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.vendor_boot))
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD) $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD)

# SPL
VENDOR_SECURITY_PATCH := 2023-09-05

# Inherit the proprietary files
include vendor/xiaomi/plato/BoardConfigVendor.mk
