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

-include device/tinno/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/yu/garlic

# Assert
TARGET_OTA_ASSERT_DEVICE := garlic

# Kernel
TARGET_KERNEL_CONFIG := garlic_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Power
TARGET_TAP_TO_WAKE_NODE := "/sys/android_touch/doubletap2wake" 

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5003804672
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24892644352

BOARD_ROOT_EXTRA_SYMLINKS += /mnt/vendor/persist:/persist
BOARD_ROOT_EXTRA_FOLDERS := firmware dsp

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
ifneq ($(WITH_TWRP),true)
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.qcom
endif

# Inherit from the proprietary version
-include vendor/yu/garlic/BoardConfigVendor.mk
