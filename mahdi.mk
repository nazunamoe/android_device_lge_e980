# name
PRODUCT_RELEASE_NAME := Optimus G Pro

# device
$(call inherit-product, device/lge/e980/full_e980.mk)

# phone
$(call inherit-product, vendor/mahdi/configs/common_full_phone.mk)
$(call inherit-product, vendor/mahdi/configs/gsm.mk)
$(call inherit-product, vendor/mahdi/configs/common.mk)

# products
PRODUCT_DEVICE := e980
PRODUCT_NAME := mahdi_e980
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-E980
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geefhd_open_eu BUILD_FINGERPRINT=lge/geefhd_open_eu/geefhd:4.1.2/JZO54K/E98610b.1373081564:user/release-keys PRIVATE_BUILD_DESC="geefhd_open_eu-user 4.1.2 JZO54K E98610b.1373081564 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
