#
# Copyright (C) 2023 The tequilaOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common tequila stuff.
$(call inherit-product, vendor/tequila/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bramble/aosp_bramble.mk)

include device/google/bramble/device-tequila.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a (5G)
PRODUCT_NAME := tequila_bramble

# tequilaOS props
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bramble \
    PRIVATE_BUILD_DESC="bramble-user 13 TQ2A.230305.008.C1 9471150 release-keys"

BUILD_FINGERPRINT := google/bramble/bramble:13/TQ2A.230305.008.C1/9471150:user/release-keys

$(call inherit-product, vendor/google/bramble/bramble-vendor.mk)
