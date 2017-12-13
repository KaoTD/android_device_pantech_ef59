# Copyright (C) 2016 The LineageOS Project
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
$(call inherit-product, device/pantech/ef59/ef59.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/pantech/ef59/ef59-vendor.mk)

PRODUCT_NAME := aosp_ef59
PRODUCT_DEVICE := ef59
PRODUCT_MANUFACTURER := PANTECH
PRODUCT_MODEL := VEGA SECRET NOTE

PRODUCT_BRAND := PANTECH
TARGET_VENDOR := PANTECH
TARGET_VENDOR_PRODUCT_NAME := ef59
TARGET_VENDOR_DEVICE_NAME := ef59

# Enable SU
WITH_SU := true