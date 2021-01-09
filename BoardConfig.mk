#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := device/asus/Z01M

BOARD_VENDOR := asus-qcom

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Asserts
TARGET_OTA_ASSERT_DEVICE := Z01M,ASUS_Z01M,Z01MD,ASUS_Z01MD,ZD552KL

# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

# Platform
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8953
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_CPU_CORTEX_A53 := true

# Kernel
# DISABLE SELINUX / THIS IS A BIG SECURITY FLAW AND NEEDS TO BE FIXED
# there is no way selinux will work with the trees currently used
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_BASE        := 0x80000000
BOARD_KERNEL_OFFSET      := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_KERNEL_APPEND_DTB := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/asus/Z01M
TARGET_KERNEL_CONFIG := ZD552KL-Phoenix-perf_defconfig
#TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

#TODO: Fix audio
# Audio 
# WSA8815 props, based on  LineageOS/android_device_xiaomi_msm8996-common cm-14.1
#AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
#AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
#AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Audio props based on the system.prop, flags are taken from hardware_qcom-caf_msm8998_audio
AUDIO_FEATURE_ENABLED_HIFI_AUDIO := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := false
AUDIO_FEATURE_ENABLED_DTS_EAGLE := true
DTS_CODEC_M_ := true
DOLBY_ENABLE := true
AUDIO_FEATURE_ENABLED_SSR := false
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
AUDIO_FEATURE_ENABLED_3D_AUDIO := true
	
	
	
# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-smd"

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_QTI_CAMERA_32BIT_ONLY := true

# Charger
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS += \
    hardware/cyanogen/cmhw \
    $(LOCAL_PATH)/cmhw
TARGET_TAP_TO_WAKE_NODE := "/sys/bus/i2c/devices/i2c-3/3-0038/dclick_mode"

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# CNE and DPM
#BOARD_USES_QCNE := true

# Display
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
BOARD_USES_ADRENO := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_C2D_COMPOSITION := true
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_OVERLAY := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

# FM
BOARD_HAVE_QCOM_FM := true

# Init
TARGET_IGNORE_RO_BOOT_SERIALNO := true
TARGET_INIT_VENDOR_LIB := libinit_Z01M
TARGET_RECOVERY_DEVICE_MODULES := libinit_Z01M
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Keymaster
TARGET_PROVIDES_KEYMASTER := true
#TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true
#TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864        #      65536 * 1024 mmcblk0p55
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728      #     131072 * 1024 mmcblk0p20
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432     #      32768 * 1024 mmcblk0p21
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864    #      65536 * 1024 mmcblk0p56
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4831838208    #    4718592 * 1024 mmcblk0p61
BOARD_USERDATAIMAGE_PARTITION_SIZE := 56614698496 # 55287791,5 * 1024 mmcblk0p62

# Qualcomm support
BOARD_USES_QC_TIME_SERVICES := true
BOARD_USES_QCOM_HARDWARE := true
TARGET_POWERHAL_VARIANT := qcom

# Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Radio
TARGET_RIL_VARIANT := caf

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
#TARGET_KERNEL_HAVE_EXFAT := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk
#BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

# Sensors
USE_SENSOR_MULTI_HAL := true

# GPS
TARGET_NO_RPC := true
#USE_DEVICE_SPECIFIC_GPS := true

# The only wifi driver I see is WIL6210, if that is the case hopefully this will work
# the same WIL6210 situation is with the oneplus2, so I took these configs mostly from there
# Wifi
# from mido and oneplus2 cm-14.1
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_HIDL_FEATURE_DISABLE_AP_MAC_RANDOMIZATION := true
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true

# Enable dexpreopt to speed boot time
#ifeq ($(HOST_OS),linux)
#  ifeq ($(call match-word-in-list,$(TARGET_BUILD_VARIANT),user),true)
#    ifeq ($(WITH_DEXPREOPT),)
#      WITH_DEXPREOPT := true
#    endif
#  endif
#endif

# inherit from the proprietary version
-include vendor/asus/Z01M/BoardConfigVendor.mk

