#
# Copyright (C) 2013 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/smdk4412-common/BoardCommonConfig.mk
-include device/samsung/smdk4412-qcom-common/BoardCommonConfig.mk

LOCAL_PATH := device/samsung/i9305

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# RIL
COMMON_GLOBAL_CFLAGS += -DPROPERTY_PERMS_APPEND='{ "ril.ks.status", AID_SYSTEM, 0 },'

# Camera
COMMON_GLOBAL_CFLAGS += -DCAMERA_WITH_CITYID_PARAM

TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412
TARGET_KERNEL_CONFIG := device/samsung/i9305/kernelconfig/cyanogenmod_i9305_defconfig
# TARGET_PREBUILT_KERNEL := device/samsung/i9305/prebuild/kernel

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/i9305/rootdir/twrp.fstab
RECOVERY_FSTAB_VERSION := 2

# TWRP
TWRP_NEW_THEME := true
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true

# TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
HAVE_SELINUX := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"


BOARD_CUSTOM_BOOTIMG_MK := device/samsung/i9300/custombootimg.mk


# assert
TARGET_OTA_ASSERT_DEVICE := m3,m3xx,i9305,GT-I9305

# inherit from the proprietary version
-include vendor/samsung/i9305/BoardConfigVendor.mk

# Selinux
BOARD_SEPOLICY_DIRS += device/samsung/i9305/selinux
BOARD_SEPOLICY_DIRS += device/samsung/i9305/cm12chroot/selinux
