# Licensed under the Apache License, Version 2.0.
# Copyright (C) 2009 The Android Open Source Project
# Copyright (C) 2011 The CyanogenMod Project
# Copyright (C) 2014 Benjamin Gwynn <http://xenxier.tk>
# Re-written by Benjamin Gwynn

# Call our device's AOSP device config.
$(call inherit-product, device/htc/marvel/full_marvel.mk)

# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, vendor/cm/config/mini.mk)

# Overrides for CM
PRODUCT_NAME := cm_marvel
PRODUCT_DEVICE := marvel

# Release name and versioning
PRODUCT_RELEASE_NAME := WildfireS
PRODUCT_VERSION_DEVICE_SPECIFIC :=
BUILD_ID := KVT49L
ROM_BUILDTYPE := HOMEMADE

## Assign the build fingerprint to the build.prop file.
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=cyanogenmod/htc_marvel/marvel:4.4.2/$(BUILD_ID)/v0.1:user/release-keys
