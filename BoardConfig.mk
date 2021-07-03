#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8150-common
include device/xiaomi/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/vayu

BUILD_BROKEN_DUP_RULES := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_vayu
TARGET_RECOVERY_DEVICE_MODULES := libinit_vayu

# Kernel
TARGET_KERNEL_CONFIG := vendor/vayu_defconfig

# Inherit from the proprietary version
include vendor/xiaomi/vayu/BoardConfigVendor.mk
