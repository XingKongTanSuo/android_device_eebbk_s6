#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from sm6150 device
$(call inherit-product, device/eebbk/sm6150/device.mk)

PRODUCT_DEVICE := sm6150
PRODUCT_NAME := omni_sm6150
PRODUCT_BRAND := EEBBK
PRODUCT_MODEL := S6
PRODUCT_MANUFACTURER := eebbk

PRODUCT_GMS_CLIENTID_BASE := android-eebbk

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_sm6150-eng 16.1.0 RQ1A.210205.004 eng.runner.20230829.122839 test-keys"

BUILD_FINGERPRINT := EEBBK/twrp_sm6150/sm6150:16.1.0/RQ1A.210205.004/runner08291223:eng/test-keys
