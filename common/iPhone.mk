#
# Copyright (C) 2007 The Android Open Source Project
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

PRODUCT_POLICY := android.policy_phone

PRODUCT_PACKAGES := \
	    com.android.location.provider \
	    com.android.location.provider.xml \
	    com.android.future.usb.accessory \
	    charger \
	    charger_res_images \
	    Browser \
	    Contacts \
	    Home \
	    HTMLViewer \
	    Phone \
	    ApplicationsProvider \
	    ContactsProvider \
	    DownloadProvider \
	    DownloadProviderUi \
	    MediaProvider \
	    PicoTts \
	    SettingsProvider \
	    TelephonyProvider \
	    TtsService \
	    VpnServices \
	    UserDictionaryProvider \
	    PackageInstaller \
	    DefaultContainerService \
	    Bugreport \
	    AccountAndSyncSettings \
	    DeskClock \
	    AlarmProvider \
	    Bluetooth \
	    Calculator \
	    Calendar \
	    Camera \
	    CertInstaller \
	    DrmProvider \
	    Email \
	    Gallery \
	    LatinIME \
	    LiveWallpapers \
	    LiveWallpapersPicker \
	    VisualizationWallpapers \
	    librs_jni \
	    Launcher2 \
	    Mms \
	    Music \
	    Provision \
	    Protips \
	    QuickSearchBox \
	    Settings \
	    Stk \
	    Sync \
	    SystemUI \
	    Updater \
	    CalendarProvider \
	    SyncProvider \
	    VoiceDialer

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# host-only dependencies
ifeq ($(WITH_HOST_DALVIK),true)
	    PRODUCT_PACKAGES += \
	        bouncycastle-hostdex \
	        core-hostdex \
	        libjavacore-host
endif
