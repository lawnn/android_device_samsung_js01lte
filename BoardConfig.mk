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

# inherit from common js01lte
-include device/samsung/hlte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := js01lte,js01ltedcm,hltejs01dcm,sc02f,SC02F,SC-02F,SGH-N075

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8974
TARGET_LIBINIT_MSM8974_DEFINES_FILE := device/samsung/js01lte/init/init_js01lte.cpp
TARGET_UNIFIED_DEVICE := true

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8974_sec_js01lte_dcm_defconfig

# Bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/js01lte/bluetooth/vnd_sc02f.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/js01lte/bluetooth
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false
BOARD_HAVE_BLUETOOTH_BCM := true

# inherit from the proprietary version
-include vendor/samsung/js01lte/BoardConfigVendor.mk
