
# Inherit from common
$(call inherit-product, device/samsung/a5-common/viper.mk)

$(call inherit-product, device/samsung/a5ultexx/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a5ultexx
PRODUCT_NAME := viper_a5ultexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A500FU
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_GMS_CLIENTID_BASE := android-samsung
