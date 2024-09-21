#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common Infinity-X configurations
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

WITH_GAPPS := true
INFINITY_BUILD_TYPE := OFFICIAL
TARGET_BOOTANIMATION := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_PICO_GAPPS := true
TARGET_BUILD_APERTURE_CAMERA := true
INFINITY_MAINTAINER := "SuvojeetSengupta"
TARGET_BUILD_VIMUSIC := true
TARGET_BUILD_GOOGLE_TELEPHONY := false
USE_MOTO_CALCULATOR := true

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := infinity_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
