#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit some common infinity stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

#Axion Os
TARGET_DISABLE_EPPE := true
AXION_MAINTAINER := MaheshTechnicals
AXION_PROCESSOR  := Snapdragon_720G
AXION_CAMERA_REAR_INFO  := 64,48
AXION_CAMERA_FRONT_INFO := 16
TARGET_ENABLE_BLUR := true

# Core groups for process affinity
AXION_CPU_SMALL_CORES := 0,1,2,3,4,5
AXION_CPU_BIG_CORES   := 6,7

# Cpuset layout tuned for 6+2
AXION_ALL_CORES     := 0-7
AXION_CPU_BG        := 0-3
AXION_CPU_FG        := 0-5
AXION_CPU_LIMIT_BG  := 0-1
AXION_CPU_LIMIT_UI  := 0-2
AXION_CPU_DISPLAY   := 0-5

# Turn off extra logging on release builds
AXION_DEBUGGING_ENABLED := false

# Include signing keys
include vendor/lineage-priv/keys/keys.mk

# Browser
PRODUCT_PACKAGES += \
    Jelly

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# infinity
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_BLUR := true
INFINITY_MAINTAINER := AtharvaSwamy

WITH_GAPPS := true
PRODUCT_NAME := lineage_miatoll
PRODUCT_DEVICE := miatoll
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := SM6250

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="miatoll_global-user 12 SKQ1.211019.001 V14.0.3.0.SJZMIXM release-keys" \
    BuildFingerprint=Redmi/miatoll_global/miatoll:12/RKQ1.211019.001/V14.0.3.0.SJZMIXM:user/release-keys
