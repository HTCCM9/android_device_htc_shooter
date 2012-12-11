# Copyright (C) 2012 The Android Open Source Project
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

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# QCOM Display
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    libaudioutils

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# Hardware
PRODUCT_PACKAGES += \
    gps.shooter \
    lights.shooter

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    Torch

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_PACKAGES += send_bug
    PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug
endif



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
    device/htc/shooter/prebuilt/system/etc/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    device/htc/shooter/prebuilt/system/etc/firmware/default_bak.acdb:/system/etc/firmware/default_bak.acdb \
    device/htc/shooter/prebuilt/system/etc/firmware/fw_bcm4329.bin:/system/etc/firmware/fw_bcm4329.bin \
    device/htc/shooter/prebuilt/system/etc/firmware/fw_bcm4329_apsta.bin:/system/etc/firmware/fw_bcm4329_apsta.bin \
    device/htc/shooter/prebuilt/system/etc/firmware/leia_pfp_470.fw:/system/etc/firmware/leia_pfp_470.fw \
    device/htc/shooter/prebuilt/system/etc/firmware/leia_pm4_470.fw:/system/etc/firmware/leia_pm4_470.fw \
    device/htc/shooter/prebuilt/system/etc/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw

#Touchscreen config file
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/shooter/prebuilt/system/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/shooter/prebuilt/system/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/htc/shooter/prebuilt/system/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \

#Config file
PRODUCT_COPY_FILES += \
    device/htc/shooter/configs/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/shooter/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/shooter/configs/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/shooter/configs/voicemail-conf.xml:system/etc/voicemail-conf.xml


PRODUCT_COPY_FILES += \
    device/htc/shooter/vold.fstab:system/etc/vold.fstab \

TARGET_PREBUILT_KERNEL := device/htc/shooter/prebuilt/root/kernel

# Local Kernel
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Kernel Modules
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/lib/modules/bcm4329.ko:system/lib/modules/bcm4329.ko \
    device/htc/shooter/prebuilt/system/lib/modules/sequans_sdio.ko:system/lib/modules/sequans_sdio.ko \
    device/htc/shooter/prebuilt/system/lib/modules/wimaxdbg.ko:system/lib/modules/wimaxdbg.ko \
    device/htc/shooter/prebuilt/system/lib/modules/wimaxuart.ko:system/lib/modules/wimaxuart.ko

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_LOCALES += en

PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab

# common msm8660 configs
$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := htc_shooter
PRODUCT_DEVICE := shooter
PRODUCT_BRAND := virgin_mobile
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC

# Common Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/htc/shooter/prebuilt/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/htc/shooter/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh 

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

