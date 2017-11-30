# Copyright (C) 2014 The Android Open Source Project
# Copyright (C) 2014-2018 ADT-1 Development
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

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/molly/overlay-tv

# Device Type
PRODUCT_CHARACTERISTICS := tv,nosdcard

# DPI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# Permissions
PRODUCT_COPY_FILES += \
    device/google/tv_molly/permissions/com.google.android.tv.installed.xml:system/etc/permissions/com.google.android.tv.installed.xml \
    device/google/tv_molly/permissions/tv_molly.xml:system/etc/permissions/tv_molly.xml

# TV-specific Apps/Packages
PRODUCT_PACKAGES += \
    AppDrawer \
    LeanbackCustomize \
    LeanbackLauncher \
    LeanbackIme \
    Provision \
    TvProvider \
    tv_input.default \
    TV

# Inherit from molly-common
$(call inherit-product, device/google/molly-common/device.mk)
