#
# Copyright (C) 2011 The Evervolv Project
# Copyright (C) 2012 The Playground Project
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
#
# Setup device specific product configuration.
#

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/shooter/shooter-vendor.mk)

# Inherit Language Files
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/etc/gps.conf:system/etc/gps.conf

PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/root/init.shooter.rc:root/init.shooter.rc \
    device/htc/shooter/prebuilt/root/ueventd.shooter.rc:root/ueventd.shooter.rc

#Add touchscreen config file
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/shooter/prebuilt/system/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/shooter/prebuilt/system/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/htc/shooter/prebuilt/system/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# media config xml file
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/shooter/shooter-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
	ro.ril.oem.ecclist=911 \
	ro.ril.set.mtusize=1472 \
	ro.com.google.clientidbase=android-htc \
	ro.com.google.clientidbase.yt=android-virgin-us \
	ro.com.google.clientidbase.am=android-virgin-us \
	ro.com.google.clientidbase.gmm=android-htc \
	ro.com.google.clientidbase.ms=android-virgin-us \
	ro.com.google.clientidbase=android-htc \
	ro.com.google.gmsversion=4.0_r2 \
	ro.bt.tetheringUI=0 \
	ro.usb.tetheringUI=0 \
	ro.product.model=HTCEVOV4G \
	ro.cdma.home.operator.alpha=Virgin Mobile \
	gsm.sim.operator.alpha=Virgin Mobile \
	gsm.operator.alpha=Virgin Mobile \
	ro.cdma.home.operator.numeric=311490 \
	gsm.sim.operator.numeric=311490 \
	gsm.operator.numeric=311490 \
	gsm.sim.operator.iso-country=us \
	gsm.operator.iso-country=us \
	ro.da1.enable=true \
	ro.opengles.version=131072

DEVICE_PACKAGE_OVERLAYS += device/htc/shooter/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Misc
PRODUCT_PACKAGES += \
    gps.shooter \
    lights.shooter

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/htc/shooter/prebuilt/system/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/htc/shooter/prebuilt/system/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/htc/shooter/prebuilt/system/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    device/htc/shooter/prebuilt/system/usr/keylayout/atmel-touchscreen.kl:system/usr/atmel-touchscreen/qwerty.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/shooter-keypad.kl:system/usr/keylayout/shooter-keypad.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/htc/shooter/prebuilt/system/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/etc/firmware/BCM4329B1_002.002.023.0589.0632.hcd:/system/etc/firmware/BCM4329B1_002.002.023.0589.0632.hcd \
    device/htc/shooter/prebuilt/system/etc/firmware/default_bak.acdb:/system/etc/firmware/default_bak.acdb \
    device/htc/shooter/prebuilt/system/etc/firmware/fw_bcm4329.bin:/system/etc/firmware/fw_bcm4329.bin \
    device/htc/shooter/prebuilt/system/etc/firmware/fw_bcm4329_apsta.bin:/system/etc/firmware/fw_bcm4329_apsta.bin \
    device/htc/shooter/prebuilt/system/etc/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/htc/shooter/prebuilt/system/etc/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/htc/shooter/prebuilt/system/etc/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw

TARGET_PREBUILT_KERNEL := device/htc/shooter/prebuilt/root/kernel

ifneq ($(TARGET_PREBUILT_KERNEL),)

# Local Kernel
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Kernel Modules
PRODUCT_COPY_FILES += $(shell \
    find device/htc/shooter/prebuilt/system/lib/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

endif

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_LOCALES += en

PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := htc_shooter
PRODUCT_DEVICE := shooter
PRODUCT_BRAND := virgin_mobile
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC

