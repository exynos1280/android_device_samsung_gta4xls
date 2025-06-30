#
# Copyright (C) The LineageOS Project
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

# Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from gta4xls device
$(call inherit-product, device/samsung/gta4xls/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Device identifier, this must come after all inclusions
PRODUCT_DEVICE := gta4xls
PRODUCT_NAME := lineage_gta4xls
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-P625
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 34
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="gta4xlsxx-user 12 SP1A.210812.016 P625XXS6BYH1 release-keys" \
    BuildFingerprint=samsung/gta4xlsxx/gta4xls:12/SP1A.210812.016/P625XXS6BYH1:user/release-keys \
    DeviceProduct=gta4xlsxx \
    SystemName=gta4xlsxx
