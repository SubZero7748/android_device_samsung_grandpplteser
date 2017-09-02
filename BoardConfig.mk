#
# Copyright (C) 2012 The CyanogenMod Project
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

#-include device/samsung/galaxys2-common/BoardCommonConfig.mk

#Sub_Zero2

#Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MT6737T
TARGET_NO_BOOTLOADER := true

#Platform
TARGET_BOARD_PLATFORM := mt6737t
#TARGET_BOARD_PLATFORM_GPU := 

#Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_VARIANT := generic
TARGET_KERNEL_ARCH := arm

#Partition & Block
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3229614080
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3900702720
BOARD_FLASH_BLOCK_SIZE := 131072

#Kernel
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,32N2
BOARD_KERNEL_BASE := 3fffc000

#boot.img
BOARD_RAMDISK_OFFSET := 04004000
BOARD_SECOND_OFFSET := 00f04000
BOARD_TAGS_OFFSET := 0e004000
BOARD_PAGE_SIZE := 2048
BOARD_SECOND_SIZE := 0
BOARD_DT_SIZE := 485376

#Sub_Zero2


#TARGET_BOARD_INFO_FILE := device/samsung/grandpplteser/board-info.txt

# Device specific headers
#TARGET_SPECIFIC_HEADER_PATH += device/samsung/i9100/include

# Bluetooth
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/grandpplteser/bluetooth

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/grandpplteser
TARGET_KERNEL_CONFIG := mt6737t-grandpplte_defconfig

# assert
TARGET_OTA_ASSERT_DEVICE := grandpplte,grandpplteser,SM-G532F

# Use the non-open-source parts, if they're present
-include vendor/samsung/grandpplteser/BoardConfigVendor.mk
