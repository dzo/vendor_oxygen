#
# Set ro.modversion
#
ifdef OXYGEN_RELEASE
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Oxygen-2.1.3
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=Oxygen-TEST
endif

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

PRODUCT_PACKAGES += \
    Superuser

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Sceptrum.ogg \
    ro.config.notification_sound=Castor.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    keyguard.no_require_sim=true \
    persist.adb.notify=0

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/oxygen/overlay

PRODUCT_COPY_FILES += \
    vendor/oxygen/prebuilt/etc/hosts:system/etc/hosts \
    vendor/oxygen/prebuilt/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/oxygen/prebuilt/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/oxygen/prebuilt/etc/init.d/11dalviklocation:system/etc/init.d/11dalviklocation \
    vendor/oxygen/prebuilt/etc/init.d/99complete:system/etc/init.d/99complete

# Google Apps
$(call inherit-product, vendor/google/gapps.mk)
