#
# Copyright (C) 2019 The Android Open Source Project
# Copyright (C) 2019 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Dynamic Partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

# Extra VNDK Versions
PRODUCT_EXTRA_VNDK_VERSIONS := 29

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMX1805
PRODUCT_NAME := twrp_RMX1805
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme C1
PRODUCT_MANUFACTURER := realme
PRODUCT_RELEASE_NAME := Realme C1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=RMX1805 \
    BUILD_PRODUCT=RMX1805 \
    TARGET_DEVICE=RMX1805

# HACK: Set vendor patch level
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.bootimage.build.date.utc=0 \
    ro.build.date.utc=0

# Dimen
TARGET_SCREEN_HEIGHT := 1520
TARGET_SCREEN_WIDTH := 720
TW_THEME := portrait_hdpi
