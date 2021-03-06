#
# Copyright (C) 2017-2018 The LineageOS Project
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
# limita

LOCAL_PATH := device/samsung/J120F

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
TARGET_BOARD_PLATFORM += exynos3
TARGET_BOARD_PLATFORM_GPU := mali-T720
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a7 -mfpu=neon
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a7 -mfpu=neon
BOARD_VENDOR := samsung
TARGET_SOC := exynos3475
TARGET_SLSI_VARIANT := cm

# Bionic
MALLOC_SVELTE := true


# Video scaling issue workaround
TARGET_OMX_LEGACY_RESCALING := true

# Architecture
ARCH_ARM_HAVE_NEON := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT_CPU := cortex-a7


# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal3475

# Kernel
TARGET_KERNEL_ARCH := arm
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_NO_KERNEL := true
USES_UNCOMPRESSED_KERNEL := true

# Partitions
BOARD_CACHE_DEVICE := mmcblk0p21
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := mmcblk0p20
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_DATA_DEVICE := mmcblk0p23
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw

#BOARD_FLASH_BLOCK_SIZE := 131072
# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2415919104
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4970250240
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_HAS_LARGE_FILESYSTEM := true
#BOARD_BOOTIMAGE_PARTITION_SIZE :=
#BOARD_RECOVERYIMAGE_PARTITION_SIZE :=
#BOARD_SYSTEMIMAGE_PARTITION_SIZE :=
#BOARD_CACHEIMAGE_PARTITION_SIZE :=

# Hardware Rendering
TARGET_GPU_PP_CORE := 1
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# HDMI
BOARD_HDMI_INCAPABLE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true
BOARD_CUSTOM_BT_CONFIG := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
# (G)SCALER
BOARD_USES_SCALER := true

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND := 802_11_ABG
BOARD_USES_HWC_SERVICES := true

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_SHOW_PERCENTAGE := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# Samsung HALs
TARGET_AUDIOHAL_VARIANT := samsung
TARGET_POWERHAL_VARIANT := samsung

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
DEVICE_RESOLUTION := 480x800
HAVE_SELINUX := true
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_FSTAB := device/samsung/J120F/ramdisk/recovery.fstab
PLATFORM_SDK_VERSION := 23

# Audio configs
BOARD_USES_GENERIC_AUDIO := false

# Telephony
#BOARD_USE_VETH :=
#BOARD_SPRD_RIL :=
#USE_BOOT_AT_DIAG :=

# RIL
BOARD_VENDOR := samsung
BOARD_MODEM_TYPE := tss310
BOARD_PROVIDES_LIBRIL := true

# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril

# Other
DISABLE_DEXPREOPT := true
WITH_DEXPREOPT := false

# Don't generate block based zips
BLOCK_BASED_OTA := true

USE_CAMERA_STUB := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# CMHW&Samsung Hardware
BOARD_HARDWARE_CLASS += $(LOCAL_PATH)/cmhw
BOARD_HARDWARE_CLASS += hardware/samsung/cmhw

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Samsung Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true
BOARD_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT
TARGET_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE


#-include vendor/samsung/J120F/vendor.mk

-include vendor/samsung/J120F/vendor.mk

# Kernel config
TARGET_KERNEL_SOURCE := kernel/samsung/exynos3
TARGET_KERNEL_CONFIG := j1xlte_02_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
