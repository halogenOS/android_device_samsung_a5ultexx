Copyright 2017-2019 - The LineageOS Project
Copyright 2015-2016 - The CyanogenMod Project

Device configuration for Samsung Galaxy A5 (SM-A500X).

WORK IN PROGRESS. WILL EAT YOUR CAT.
------------------------------------------------------------------
Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Qualcomm MSM8916/MSM8216 Quad-core 1.2 GHz ARM® Cortex™ A53
CHIPSET | Qualcomm MSM8916 Snapdragon 410
GPU     | Adreno 306
Memory  | 2 GB
Shipped Android Version | 4.4.4/5.1.1/6.0
Storage | 16 GB
MicroSD | Up to 64 GB
Battery | 2300 mAh (non-removable)
Dimensions | 139.3 x 69.7 x 6.7 mm (5.48 x 2.74 x 0.26 in)
Display | 1280 x 720 (qHD), 5.0"
Rear Camera  | 13.0 MP, LED flash, S.LSI. S5K4H5YB/ IMX219
Front Camera | 5.0 MP, S.LSI. S5K5E3YX

mkdir .repo/local_manifests
nano .repo/local_manifests/roomservice.xml

  <?xml version="1.0" encoding="UTF-8"?>
  <manifest>

    <project name="LineageOS/android_hardware_samsung" path="hardware/samsung" remote="github" revision="lineage-16.0" />
    <project name="LineageOS/android_external_sony_boringssl-compat" path="external/sony/boringssl-compat" remote="github" revision="lineage-16.0" />

    <project name="Soft-Bullet/android_kernel_samsung_msm8916" path="kernel/samsung/msm8916" remote="github" revision="lineage-16.0" />
    <project name="Soft-Bullet/android_device_samsung_a5ultexx" path="device/samsung/a5ultexx" remote="github" revision="lineage-16.0" />
    <project name="Soft-Bullet/proprietary_vendor_samsung" path="vendor/samsung" remote="github" revision="lineage-16.0" />

  </manifest>

repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

nano build/target/product/core.mk
nano vendor/lineage/config/common_full_phone.mk

export KBUILD_BUILD_USER="xDEV"
export KBUILD_BUILD_HOST="ubuntu"
export USE_CCACHE=1
ccache -M 50G
. build/envsetup.sh
lunch lineage_a5ultexx-userdebug
mka bacon -j$(nproc --all)

![Samsung Galaxy A5](https://www.dhresource.com/600x600/f2/albu/g4/M00/5C/99/rBVaEFcofXKAI--wAAC_S98Qwh4893.jpg "Galaxy A5")
