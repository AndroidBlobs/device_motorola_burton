# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from burton device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := burton
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_burton
PRODUCT_MODEL := motorola edge plus

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := burton
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="burton_reteu-user 10 QPB30.188-43 df350 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/burton_reteu/burton:10/QPB30.188-43/df350:user/release-keys
