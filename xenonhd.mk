
# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Enhanced NFC
$(call inherit-product, vendor/xenonhd/configs/nfc_enhanced.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Telephony
$(call inherit-product, vendor/xenonhd/configs/telephony.mk)

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Inherit drm blobs
-include vendor/xenonhd/products/common_drm.mk

# Copy specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \ 
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit device configuration
$(call inherit-product, device/lge/e980/full_e980.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e980
PRODUCT_NAME := xenonhd_e980
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-E980
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geefhd_open_eu BUILD_FINGERPRINT=lge/geefhd_open_eu/geefhd:4.1.2/JZO54K/E98610b.1373081564:user/release-keys PRIVATE_BUILD_DESC="geefhd_open_eu-user 4.1.2 JZO54K E98610b.1373081564 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
