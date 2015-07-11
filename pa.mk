
# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include AOSPA common configuration
include vendor/pa/main.mk

# Enhanced NFC
$(call inherit-product, vendor/pa/configs/nfc_enhanced.mk)

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e980/full_e980.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e980
PRODUCT_NAME := pa_e980
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-E980
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geefhd_open_eu BUILD_FINGERPRINT=lge/geefhd_open_eu/geefhd:4.1.2/JZO54K/E98610b.1373081564:user/release-keys PRIVATE_BUILD_DESC="geefhd_open_eu-user 4.1.2 JZO54K E98610b.1373081564 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
