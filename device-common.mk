#
# Copyright (C) 2018 The LineageOS Project
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

LOCAL_PATH := device/samsung/universal7580-common

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio
PRODUCT_PACKAGES += \
    audio.primary.exynos7580 \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default \
    tinymix \
    android.hardware.audio.service \
    android.hardware.audio@7.0-impl \
    android.hardware.audio.effect@7.0-impl \
    android.hardware.bluetooth.audio@2.1-impl \
    libaptX_encoder \
    libaptXHD_encoder

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration_7_0.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration_7_0.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl.7580 \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl-legacy \
    android.hardware.camera.provider@2.4-service \
    libcsc

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-impl \
    android.hardware.configstore@1.0-service

# Control groups and task profiles
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/cgroups.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
    $(LOCAL_PATH)/configs/task_profiles.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.4-service.clearkey

# Flat device tree for boot image
PRODUCT_HOST_PACKAGES += \
    dtbhtoolExynos

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gps.xml

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    gralloc.exynos7580 \
    hwcomposer.exynos7580 \
    libhwc2on1adapter

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service.software

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1-service

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.samsung

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    memtrack.exynos7580

# Mobicore
PRODUCT_PACKAGES += \
    mcDriverDaemon \
    libMcClient \
    libMcRegistry

# OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libExynosOMX_Core \
    libExynosOMX_Resourcemanager \
    libOMX.Exynos.AVC.Decoder \
    libOMX.Exynos.AVC.Encoder \
    libOMX.Exynos.MPEG4.Decoder \
    libOMX.Exynos.MPEG4.Encoder \
    libOMX.Exynos.VP8.Decoder \
    libOMX.Exynos.VP8.Encoder \
    libOMX.Exynos.WMV.Decoder

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml

# ramdisk
PRODUCT_PACKAGES += \
    init.power.rc \
    fstab.samsungexynos7580 \
    init.samsung.rc \
    init.samsungexynos7580.rc \
    init.samsungexynos7580.usb.rc \
    init.recovery.samsungexynos7580.rc \
    init.wifi.rc \
    ueventd.samsungexynos7580.rc

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze

# Seccomp filters
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.vibrator-service.samsung

# Shims
PRODUCT_PACKAGES += \
    libcamera_client_shim \
    libexynoscamera_shim \
    libstagefright_shim \
    libui_shim \
    libcutils_shim

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Touch features
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    wificond \
    wifilogd \
    wlutil \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    android.hardware.wifi@1.0-service.legacy

# ADB configuration
PRODUCT_PRODUCT_PROPERTIES += \
    persist.adb.nonblocking_ffs=0 \
    ro.adb.nonblocking_ffs=0

# Public libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Properties
-include $(LOCAL_PATH)/system_prop.mk

# call the proprietary setup
$(call inherit-product, vendor/samsung/universal7580-common/universal7580-common-vendor.mk)
