PRODUCT_RELEASE_NAME := Optimus G Pro

# Inherit AOSP device configuration
$(call inherit-product, device/lge/e980/full_e980.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common stuff.
$(call inherit-product, vendor/schism/configs/common.mk)
$(call inherit-product, vendor/schism/configs/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e980
PRODUCT_NAME := schism_e980
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-E980
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geefhd_open_eu BUILD_FINGERPRINT=lge/geefhd_open_eu/geefhd:4.1.2/JZO54K/E98610b.1373081564:user/release-keys PRIVATE_BUILD_DESC="geefhd_open_eu-user 4.1.2 JZO54K E98610b.1373081564 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/schism/prebuilt/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
