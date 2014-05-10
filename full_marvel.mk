## Inherit some common stuff
$(call inherit-product, build/target/product/full_base.mk)
$(call inherit-product, build/target/product/languages_full.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit device configurations
$(call inherit-product, device/htc/msm7x27-common/msm7x27.mk)
$(call inherit-product, device/htc/marvel-common/marvel.mk)
$(call inherit-product, device/htc/marvel/device_marvel.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := marvel
PRODUCT_NAME := full_marvel
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := Wildfire S A510e
PRODUCT_MANUFACTURER := HTC
PRODUCT_CHARACTERISTICS := phone

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_marvel BUILD_ID=$(BUILD_ID) BUILD_DISPLAY_ID=$(BUILD_ID) BUILD_FINGERPRINT=b2g/htc_marvel/marvel:4.0.4/Simplicit$(BUILD_ID)/0.1:user/release-keys PRIVATE_BUILD_DESC="release-keys"