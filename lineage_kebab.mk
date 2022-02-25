# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from kebab device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := oneplus
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := oneplus
PRODUCT_NAME := lineage_kebab
PRODUCT_MODEL := KB2003

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
TARGET_VENDOR := oneplus
TARGET_VENDOR_PRODUCT_NAME := kebab
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="aosp_kebab-userdebug 12 SQ1D.220205.004 1645709771 test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := OnePlus/kebab/kebab:12/SQ1D.220205.004/1336:userdebug/release-keys
