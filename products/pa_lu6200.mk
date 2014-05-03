# Copyright (C) 2014 ParanoidAndroid Project
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

# Check for target product

ifeq (pa_lu6200,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_lu6200

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/lge/lu6200/lu6200.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lu6200
PRODUCT_NAME := pa_lu6200
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-LU6200
PRODUCT_RELEASE_NAME := Optimus LTE
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lu6200  BUILD_FINGERPRINT=LGE/lu6200/i_lgu:4.0.4/IMM76D/LG-LU6200-V167.1c2df587db:user/release-keys PRIVATE_BUILD_DESC="i_lgu-user 4.0.4 IMM76D 4823bc3c release-keys"

endif
