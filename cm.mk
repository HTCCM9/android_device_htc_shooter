#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product, device/htc/shooter/shooter.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/cdma.mk)

PRODUCT_NAME := cm_shooter
PRODUCT_BRAND := virgin_mobile
PRODUCT_DEVICE := shooter
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC

# Release name and versioning
PRODUCT_RELEASE_NAME := Evo V 4G

UTC_DATE := $(shell date +%s)
DATE     := $(shell date +%Y%m%d)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=IML74K \
    PRODUCT_NAME=htc_shooter \
    TARGET_DEVICE=shooter \
    BUILD_FINGERPRINT=virgin_mobile/htc_shooter/shooter:4.0.4/IML74K/372137.2:user/release-keys \
    PRIVATE_BUILD_DESC="shooter-user 4.0.4 IML74K 372137.2 release-keys" \
    BUILD_NUMBER=${DATE} \
    BUILD_VERSION_TAGS=release-keys \
    TARGET_BUILD_TYPE=user
