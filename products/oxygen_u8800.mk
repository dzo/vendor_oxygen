# Inherit AOSP device configuration for bravo.
$(call inherit-product, device/huawei/u8800/device_u8800.mk)

# Inherit some common oxygen stuff.
$(call inherit-product, vendor/oxygen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/oxygen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := oxygen_u8800
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := u8800
PRODUCT_MODEL := Huawei u8800
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u8800 BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

# Broadcom FM radio
#$(call inherit-product, vendor/oxygen/products/bcm_fm_radio.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2
