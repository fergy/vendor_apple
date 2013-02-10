LOCAL_PATH := $(dir $(lastword $(MAKEFILE_LIST)))

PRODUCT_MANUFACTURER := apple

LIBERTAS := $(LOCAL_PATH)libertas/

# DIRTY DIRTY DIRTY - FIXXOR THIS PL0X
PREBUILT := $(LOCAL_PATH)prebuilt/

PRODUCT_PACKAGES += \
	CMFileManager \
	Superuser

PRODUCT_COPY_FILES += \
	$(LIBERTAS)LICENCE.libertas:system/etc/firmware/LICENCE.libertas \
	$(LIBERTAS)sd8686.bin:system/etc/firmware/sd8686.bin \
	$(LIBERTAS)sd8686_helper.bin:system/etc/firmware/sd8686_helper.bin \
	$(LIBERTAS)LICENCE.libertas:system/etc/firmware/LICENCE.libertas \
	$(LIBERTAS)sd8686.bin:system/etc/firmware/sd8686.bin \
	$(LOCAL_PATH)wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
	$(LOCAL_PATH)init.rc:root/init.rc \
	$(LOCAL_PATH)initDroid.sh:root/initDroid.sh \
	$(PREBUILT)fsck.ext:root/sbin/fsck.ext \
	$(PREBUILT)fsck.hfs:root/sbin/fsck.hfs \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_BRAND := apple
PRODUCT_NAME := apple
PRODUCT_BOARD := apple

#PRODUCT_PACKAGE_OVERLAYS += vendor/apple/overlay/common

include frameworks/base/data/sounds/AudioPackageElements.mk
include frameworks/base/data/sounds/AudioPackageNewWave.mk
include frameworks/base/data/sounds/AudioPackageStars.mk

$(call inherit-product-if-exists, external/svox/pico/lang/all_pico_languages.mk)

$(call inherit-product-if-exists, build/target/product/locales_full.mk)
