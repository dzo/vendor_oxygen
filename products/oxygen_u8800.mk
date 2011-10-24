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
PRODUCT_BRAND := Huawei
PRODUCT_DEVICE := u8800
PRODUCT_MODEL := u8800
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_BOARD := U8800
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=U8800 BUILD_ID=GRK39F BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2 \
    ro.modversion=Oxygen-2.3.1-u8800
