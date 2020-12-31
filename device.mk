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

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.manual_postprocessing.xml:system/etc/permissions/android.hardware.camera.manual_postprocessing.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    $(LOCAL_PATH)/configs/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    $(LOCAL_PATH)/configs/permissions/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    $(LOCAL_PATH)/configs/permissions/asus.hardware.alwayson.xml:system/etc/permissions/asus.hardware.alwayson.xml \
    $(LOCAL_PATH)/configs/permissions/asus.hardware.display.pq_chip.xml:system/etc/permissions/asus.hardware.display.pq_chip.xml \
    $(LOCAL_PATH)/configs/permissions/asus.hardware.display.splendid.reading_mode.xml:system/etc/permissions/asus.hardware.display.splendid.reading_mode.xml \
    $(LOCAL_PATH)/configs/permissions/asus.hardware.display.splendid.xml:system/etc/permissions/asus.hardware.display.splendid.xml \
    $(LOCAL_PATH)/configs/permissions/asus.hardware.glove.xml:system/etc/permissions/asus.hardware.glove.xml \
    $(LOCAL_PATH)/configs/permissions/asus.hardware.touchgesture.double_tap.xml:system/etc/permissions/asus.hardware.touchgesture.double_tap.xml \
    $(LOCAL_PATH)/configs/permissions/asus.hardware.touchgesture.launch_app.xml:system/etc/asus.hardware.touchgesture.launch_app.xml \
    $(LOCAL_PATH)/configs/permissions/asus.hardware.touchgesture.swipe_up.xml:system/etc/permissions/asus.hardware.touchgesture.swipe_up.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.battery.smart_charging.xml:system/etc/permissions/asus.software.battery.smart_charging.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.camera.xml:system/etc/permissions/asus.software.camera.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.cr.virtualkey.xml:system/etc/permissions/asus.software.cr.virtualkey.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.gamewidget.zenui40.xml:system/etc/permissions/asus.software.gamewidget.zenui40.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.lockscreen.cmweather.xml:system/etc/permissions/asus.software.lockscreen.cmweather.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.marketapp.xml:system/etc/permissions/asus.software.marketapp.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.pagemarker.xml:system/etc/permissions/asus.software.pagemarker.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.project.ZD552KL.xml:system/etc/permissions/asus.software.project.ZD552KL.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.sensor_service.eartouch.xml:system/etc/permissions/asus.software.sensor_service.eartouch.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.sensor_service.terminal.xml:system/etc/permissions/asus.software.sensor_service.terminal.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.sensor_service.xml:system/etc/permissions/asus.software.sensor_service.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.sku.WW.xml:system/etc/permissions/asus.software.sku.WW.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.smartgallery.xml:system/etc/permissions/asus.software.smartgallery.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.themes_store.xml:system/etc/permissions/asus.software.themes_store.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.twinapps.xml:system/etc/permissions/asus.software.twinapps.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.vibration.intensity.xml:system/etc/permissions/asus.software.vibration.intensity.xml \
    $(LOCAL_PATH)/configs/permissions/asus.software.whole_system_onehand.xml:system/etc/permissions/asus.software.whole_system_onehand.xml \
    $(LOCAL_PATH)/configs/permissions/cneapiclient.xml:system/etc/permissions/cneapiclient.xml \
    $(LOCAL_PATH)/configs/permissions/com.android.mediadrm.signer.xml:system/etc/com.android.mediadrm.signer.xml \
    $(LOCAL_PATH)/configs/permissions/com.asus.fm.xml:system/etc/permissions/com.asus.fm.xml \
    $(LOCAL_PATH)/configs/permissions/com.asus.weatherwidget.xml:system/etc/permissions/com.asus.weatherwidget.xml \
    $(LOCAL_PATH)/configs/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    $(LOCAL_PATH)/configs/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    $(LOCAL_PATH)/configs/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    $(LOCAL_PATH)/configs/permissions/com.qti.snapdragon.sdk.display.xml:system/etc/permissions/com.qti.snapdragon.sdk.display.xml \
    $(LOCAL_PATH)/configs/permissions/com.qti.location.sdk.xml:system/etc/permissions/com.qti.location.sdk.xml \
    $(LOCAL_PATH)/configs/permissions/com.qualcomm.location.vzw_library.xml:system/etc/permissions/com.qualcomm.location.vzw_library.xml \
    $(LOCAL_PATH)/configs/permissions/com.qualcomm.location.xml:system/etc/permissions/com.qualcomm.location.xml \
    $(LOCAL_PATH)/configs/permissions/com.quicinc.cne.xml:system/etc/permissions/com.quicinc.cne.xml \
    $(LOCAL_PATH)/configs/permissions/com.quicinc.wbc.xml:system/etc/permissions/com.quicinc.wbc.xml \
    $(LOCAL_PATH)/configs/permissions/com.quicinc.wbcservice.xml:system/etc/permissions/com.quicinc.wbcservice.xml \
    $(LOCAL_PATH)/configs/permissions/ConnectivityExt.xml:system/etc/permissions/ConnectivityExt.xml \
    $(LOCAL_PATH)/configs/permissions/dpmapi.xml:system/etc/permissions/dpmapi.xml \
    $(LOCAL_PATH)/configs/permissions/embms.xml:system/etc/permissions/embms.xml \
    $(LOCAL_PATH)/configs/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    $(LOCAL_PATH)/configs/permissions/im-novo.xml:system/etc/permissions/im-novo.xml \
    $(LOCAL_PATH)/configs/permissions/imscm.xml:system/etc/permissions/imscm.xml \
    $(LOCAL_PATH)/configs/permissions/izat.xt.srv.xml:system/etc/permissions/izat.xt.srv.xml \
    $(LOCAL_PATH)/configs/permissions/myinksearch-novo.xml:system/etc/permissions/myinksearch-novo.xml \
    $(LOCAL_PATH)/configs/permissions/myscriptengine-novo.xml:system/etc/permissions/myscriptengine-novo.xml \
    $(LOCAL_PATH)/configs/permissions/myscripthwr-novo.xml:system/etc/permissions/myscripthwr-novo.xml \
    $(LOCAL_PATH)/configs/permissions/myshape-novo.xml:system/etc/permissions/myshape-novo.xml \
    $(LOCAL_PATH)/configs/permissions/org.simalliance.openmobileapi.xml:system/etc/permissions/org.simalliance.openmobileapi.xml \
    $(LOCAL_PATH)/configs/permissions/qcom_logkit.xml:system/etc/permissions/qcom_logkit.xml \
    $(LOCAL_PATH)/configs/permissions/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
    $(LOCAL_PATH)/configs/permissions/qti_permissions.xml:system/etc/permissions/qti_permissions.xml \
    $(LOCAL_PATH)/configs/permissions/qti-vzw-ims-internal.xml:system/etc/permissions/qti-vzw-ims-internal.xml \
    $(LOCAL_PATH)/configs/permissions/rcs_service_aidl.xml:system/etc/permissions/rcs_service_aidl.xml \
    $(LOCAL_PATH)/configs/permissions/rcs_service_api.xml:system/etc/permissions/rcs_service_api.xml
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/asus.software.azs.xml:system/etc/permissions/asus.software.azs.xmzwn \
    $(LOCAL_PATH)/configs/permissions/asus.software.zenui.xml:system/etc/permissions/asus.software.zenui.xml

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_CONFIG := normal

# Device was launched with N
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=25

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

PRODUCT_PACKAGES += libGLES_android

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8953 \
    audio.r_submix.default \
    audio.usb.default \
    libbthost_if \
    libaudio-resampler \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcompostprocbundle \
    libshim_adsp \
    libvolumelistener \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    $(LOCAL_PATH)/configs/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/configs/audio/init.qcom.audio.sh:system/etc/init.qcom.audio.sh

# Audio policies
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_policy/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy/audio_policy_non_eu_configuration.xml:system/etc/audio_policy_non_eu_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy/audio_policy_non_eu_volumes_Z01H.xml:system/etc/audio_policy_non_eu_volumes_Z01H.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy/audio_policy_non_eu_volumes_Z01M.xml:system/etc/audio_policy_non_eu_volumes_Z01M.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy/audio_policy_volumes_Z01H.xml:system/etc/audio_policy_volumes_Z01H.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy/audio_policy_volumes_Z01M.xml:system/etc/audio_policy_volumes_Z01M.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy/r_submix_audio_policy_configuration.xml:system/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy/usb_audio_policy_configuration.xml:system/etc/usb_audio_policy_configuration.xml

# Volume tables
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/default_volume_non_eu_tables.xml:system/etc/default_volume_non_eu_tables.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.xml:system/etc/default_volume_tables.xml

# Mixer paths
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_mtp_ZD552KL.xml:system/etc/mixer_paths_mtp_ZD552KL.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_mtp_ZD552KL_EU.xml:system/etc/mixer_paths_mtp_ZD552KL_EU.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_mtp_ZE553KL.xml:system/etc/mixer_paths_mtp_ZE553KL.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_mtp_ZE553KL_EU.xml:system/etc/mixer_paths_mtp_ZE553KL_EU.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_qrd_sku3.xml:system/etc/mixer_paths_qrd_sku3.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_qrd_skum.xml:system/etc/mixer_paths_qrd_skum.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_qrd_skun.xml:system/etc/mixer_paths_qrd_skun.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_wcd9326.xml:system/etc/mixer_paths_wcd9326.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_wcd9330.xml:system/etc/mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths/mixer_paths_wcd9335.xml:system/etc/mixer_paths_wcd9335.xml

# In vendor/etc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/vendor/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/vendor/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/surround_sound_3mic/surround_sound_rec_5.1.cfg:system/etc/surround_sound_rec_5.1.cfg \
    $(LOCAL_PATH)/configs/audio/surround_sound_3mic/surround_sound_rec_AZ.cfg:system/etc/surround_sound_rec_AZ.cfg

# Voice recognition
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/sound_trigger/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger/sound_trigger_mixer_paths_wcd9306.xml:system/etc/sound_trigger_mixer_paths_wcd9306.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger/sound_trigger_mixer_paths_wcd9330.xml:system/etc/sound_trigger_mixer_paths_wcd9330.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger/sound_trigger_mixer_paths_wcd9335.xml:system/etc/sound_trigger_mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/configs/audio/sound_trigger/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libfmjni \
    libqcomfm_jni \
    libfm-hci \
    fm_helium \
    qcom.fmradio \
    fmhal_service

# Camera
PRODUCT_PACKAGES += \
    camera.msm8953 \
    bspcapability \
    Snap \
    libbson \
    libshim_camera

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/camera_config.xml:system/etc/camera/camera_config.xml \
    $(LOCAL_PATH)/configs/camera/csidtg_camera.xml:system/etc/camera/csidtg_camera.xml \
    $(LOCAL_PATH)/configs/camera/csidtg_chromatix.xml:system/etc/camera/csidtg_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx351_chromatix.xml:system/etc/camera/imx351_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx351_chromatix_factory.xml:system/etc/camera/imx351_chromatix_factory.xml \
    $(LOCAL_PATH)/configs/camera/imx362_chromatix.xml:system/etc/camera/imx362_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx362_chromatix_factory.xml:system/etc/camera/imx362_chromatix_factory.xml \
    $(LOCAL_PATH)/configs/camera/msm8953_camera_ZD552KL_PHOENIX.xml:system/etc/camera/msm8953_camera_ZD552KL_PHOENIX.xml \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_1280x720_30_0.conf:system/etc/camera/VStab_1280x720_30_0.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_1280x720_30_1.conf:system/etc/camera/VStab_1280x720_30_1.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_1280x720_30_2.conf:system/etc/camera/VStab_1280x720_30_2.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_176x144_30_0.conf:system/etc/camera/VStab_176x144_30_0.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_176x144_30_1.conf:system/etc/camera/VStab_176x144_30_1.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_1920x1080_30_0.conf:system/etc/camera/VStab_1920x1080_30_0.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_1920x1080_30_1.conf:system/etc/camera/VStab_1920x1080_30_1.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_1920x1080_30_2.conf:system/etc/camera/VStab_1920x1080_30_2.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_320x240_30_0.conf:system/etc/camera/VStab_320x240_30_0.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_320x240_30_1.conf:system/etc/camera/VStab_320x240_30_1.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_352x288_30_0.conf:system/etc/camera/VStab_352x288_30_0.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_352x288_30_1.conf:system/etc/camera/VStab_352x288_30_1.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_640x480_30_0.conf:system/etc/camera/VStab_640x480_30_0.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_640x480_30_1.conf:system/etc/camera/VStab_640x480_30_1.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_640x480_30_2.conf:system/etc/camera/VStab_640x480_30_2.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_720x480_30_0.conf:system/etc/camera/VStab_720x480_30_0.conf \
    $(LOCAL_PATH)/configs/camera/Invensense/VStab_720x480_30_1.conf:system/etc/camera/VStab_720x480_30_1.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bspcapability.xml:system/etc/bspcapability.xml \

# Display
PRODUCT_PACKAGES += \
    gralloc.msm8953 \
    copybit.msm8953 \
    hwcomposer.msm8953 \
    memtrack.msm8953 \
    liboverlay \
    libtinyxml

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# Display Calibration
PRODUCT_PACKAGES += \
    libjni_livedisplay

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files

# Browser
PRODUCT_PACKAGES += \
    Gello

# GPS
PRODUCT_PACKAGES += \
    gps.msm8953 \
    libgnsspps

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/etc/xtwifi.conf:system/etc/xtwifi.conf

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/ASUS_TransKeyboard.kl:system/usr/keylayout/ASUS_TransKeyboard.kl \
    $(LOCAL_PATH)/configs/keylayout/AVRCP_ORIGINAL.kl:system/usr/keylayout/AVRCP_ORIGINAL.kl \
    $(LOCAL_PATH)/configs/keylayout/Cellways.kl:system/usr/keylayout/Cellways.kl \
    $(LOCAL_PATH)/configs/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    $(LOCAL_PATH)/configs/keylayout/fts_cap.kl:system/usr/keylayout/fts_cap.kl \
    $(LOCAL_PATH)/configs/keylayout/fts_tstouch.kl:system/usr/keylayout/fts_tstouch.kl \
    $(LOCAL_PATH)/configs/keylayout/goodix_fp.kl:system/usr/keylayout/goodix_fp.kl \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/i-rocks_Bluetooth_Keyboard.kl:system/usr/keylayout/i-rocks_Bluetooth_Keyboard.kl \
    $(LOCAL_PATH)/configs/keylayout/OSM.kl:system/usr/keylayout/OSM.kl \
    $(LOCAL_PATH)/configs/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/configs/keylayout/synaptics_dsxv26.kl:system/usr/keylayout/synaptics_dsxv26.kl \
    $(LOCAL_PATH)/configs/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
    $(LOCAL_PATH)/configs/keylayout/Winnersun.kl:system/usr/keylayout/Winnersun.kl \
    $(LOCAL_PATH)/configs/keylayout/XMZPG.kl:system/usr/keylayout/XMZPG.kl

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/ASUS_TransKeyboard.idc:system/usr/idc/ASUS_TransKeyboard.idc \
    $(LOCAL_PATH)/configs/idc/Vendor_0b05_Product_17fc.idc:system/usr/idc/Vendor_0b05_Product_17fc.idc \
    $(LOCAL_PATH)/configs/idc/Vendor_0b05_Product_1803.idc:system/usr/idc/Vendor_0b05_Product_1803.idc \
    $(LOCAL_PATH)/configs/idc/Vendor_0b05_Product_5000.idc:system/usr/idc/Vendor_0b05_Product_5000.idc

# Lights
PRODUCT_PACKAGES += \
    lights.msm8953

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw \
    libmm-omxcore

# Power
PRODUCT_PACKAGES += \
    power.msm8953

# QMI
PRODUCT_PACKAGES += \
    libjson

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.class_main.sh \
    init.environ.rc \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.sensors.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    ueventd.qcom.rc \
    sp

PRODUCT_PACKAGES += \
    init.asus.debugtool.rc \
    init.asus.logtool.rc \
    init.asus.rc \
    init.asus-user.rc \
    init.target.rc \
    ueventd.asus.rc

# RIL
PRODUCT_PACKAGES += \
    librmnetctl \
    libxml2 \
    libtar \
    libprotobuf-cpp-lite

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8953

# Wifi
PRODUCT_PACKAGES += \
    ipacm \
    ipacm-diag \
    IPACM_cfg.xml \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwcnss_qmi \
    libwpa_client \
    libwifi-hal-qcom \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    hs20-osu-client

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/WCNSS_cfg.dat:system/etc/persist/WCNSS_cfg.dat \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:system/etc/persist//WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/persist/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_wlan_nv_Phoenix.bin:system/etc/persist/WCNSS_qcom_wlan_nv_Phoenix.bin \
    $(LOCAL_PATH)/configs/wifi/WCNSS_wlan_dictionary.dat:system/etc/persist/WCNSS_wlan_dictionary.dat

PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    tcpdump \
    wcnss_service

PRODUCT_PACKAGES += \
    fstman \
    fstman.ini

# IMS
PRODUCT_PACKAGES += \
    libshim_ims

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/thermal-engine.conf:system/etc/thermal-engine.conf

# e2fsck
PRODUCT_PACKAGES += \
    e2fsck \
    resize2fs \
    tune2fs \
    blkid \
    mke2fs

# ANT+
PRODUCT_PACKAGES += \
    antradio_app \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/asus.hardware.display.splendid.reading_mode.xml:system/etc/permissions/asus.hardware.display.splendid.reading_mode.xml \
    $(LOCAL_PATH)/configs/permissions/asus.hardware.display.splendid.xml:system/etc/permissions/asus.hardware.display.splendid.xml

# FlipCover
PRODUCT_PACKAGES += \
    FlipCoverWrapper

# dataservice
PRODUCT_PACKAGES += \
    rmnetcli

# Doze
PRODUCT_PACKAGES += \
   ZenfoneDoze

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

$(call inherit-product, vendor/cm/config/common_full_phone.mk)
