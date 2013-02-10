LOCAL_PATH := $(dir $(lastword $(MAKEFILE_LIST)))

USE_CAMERA_STUB := true

BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := 
#WPA_SUPPLICANT_VERSION      := VER_0_6_X
#BOARD_WLAN_DEVICE           := libertas_sdio
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/libertas_sdio.ko"
#WIFI_DRIVER_MODULE_ARG      := ""
#WIFI_DRIVER_MODULE_NAME     := "libertas_sdio"
TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/iphone3g_defconfig
#TODO: To avoid problems and hang-ups, make prebuilt kernel!
#TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
COMMON := $(LOCAL_PATH)/../common
include $(COMMON)/BoardConfigCommon.mk
