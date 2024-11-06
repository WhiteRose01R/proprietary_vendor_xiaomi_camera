#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

CAMERA_PACKAGE_NAME := com.android.camera

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.memory.block@1.0 \
    android.hidl.memory.block@1.0.vendor

# Overlays
PRODUCT_PACKAGES += \
    MiuiCameraOverlay \
    MiuiCameraOverlayIcon \
    MiuiCameraOverlayLeicaed

# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/camera/configs/permissions/default-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions-miuicamera.xml \
    vendor/xiaomi/camera/configs/permissions/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \
    vendor/xiaomi/camera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

PRODUCT_COPY_FILES += \
    vendor/xiaomi/camera/configs/public.libraries-xiaomi.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/public.libraries-xiaomi.txt

# Properties
TARGET_SYSTEM_PROP += vendor/xiaomi/camera/configs/properties/system.prop

$(call inherit-product, vendor/xiaomi/camera/camera-vendor.mk)
