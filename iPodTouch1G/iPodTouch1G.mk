LOCAL_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
COMMON := $(subst iPodTouch1G,common,$(LOCAL_DIR))

ifeq ($(TARGET_BUILD_TYPE),debug)
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk.mk)
else
$(call inherit-product, $(COMMON)/iPod.mk)
endif

$(call inherit-product, $(COMMON)/common.mk)

PRODUCT_NAME := iPodTouch1G
PRODUCT_DEVICE := iPodTouch1G

PRODUCT_PACKAGE_OVERLAYS += vendor/apple/overlay/mbxlite

PRODUCT_COPY_FILES += \
	$(LOCAL_DIR)gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_DIR)asound.conf:system/etc/asound.conf \
	$(LOCAL_DIR)asound.state:system/etc/asound.state

