# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ef59 device
$(call inherit-product, device/pantech/ef59/device.mk)

PRODUCT_NAME := aosp_ef59
PRODUCT_DEVICE := ef59
PRODUCT_MANUFACTURER := PANTECH
PRODUCT_MODEL := IM-A890

PRODUCT_GMS_CLIENTID_BASE := android-pantech

PRODUCT_BRAND := PANTECH
TARGET_VENDOR := PANTECH
TARGET_VENDOR_PRODUCT_NAME := ef59
TARGET_VENDOR_DEVICE_NAME := IM-A890
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=IM-A890 \
    PRODUCT_NAME=ef59 \
    BUILD_FINGERPRINT=PANTECH/ef59/IM-A890:6.0.1/MHC19Q/ZNH2KAS1KN:user/release-keys \
    PRIVATE_BUILD_DESC="ef59-user 6.0.1 MHC19Q ZNH2KAS1KN release-keys"

# AOSP packages
PRODUCT_PACKAGES += \
    Launcher3 \
    messaging \
    SoundRecorder \
    Terminal \
    WallpaperPicker

# AOSP properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.rotation_locked=true \
    ro.storage_manager.enabled=true
