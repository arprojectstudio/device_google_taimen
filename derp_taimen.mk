#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common DerpFest-AOSP stuff
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# DerpFest-AOSP Specific Flags
WITH_GMS := true

# EPPE
TARGET_DISABLE_EPPE := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit device configuration
$(call inherit-product, device/google/taimen/device.mk)
$(call inherit-product, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product-if-exists, vendor/google_devices/taimen/proprietary/device-vendor.mk)

PRODUCT_COPY_FILES += \
    device/google/taimen/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := google
PRODUCT_NAME := derp_taimen
PRODUCT_DEVICE := taimen
PRODUCT_MODEL := Pixel 2 XL

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="taimen-user 11 RP1A.201005.004.A1 6934943 release-keys" \
    BuildFingerprint=google/taimen/taimen:11/RP1A.201005.004.A1/6934943:user/release-keys \
    DeviceName=taimen