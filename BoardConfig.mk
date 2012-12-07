USE_CAMERA_STUB := true

# inherit from common msm8660 device
-include device/htc/msm8660-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/shooter/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := shooter
TARGET_NO_RADIOIMAGE := true

# TARGET_SPECIFIC_HEADER_PATH := device/htc/shooter/include
TARGET_SPECIFIC_HEADER_PATH := device/htc/msm8660-common/include

# Gps
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shooter

TARGET_HARDWARE_3D := true
TARGET_SLIMER_CAM := true

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
# Set to 9 for 8650A
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

# BOARD_HAVE_SQN_WIMAX := true
BOARD_USES_QCOM_LIBS := true

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p35: 000ffa00 00000200 "misc"
#mmcblk0p22: 00fffc00 00000200 "recovery"
#mmcblk0p21: 01000000 00000200 "boot"
#mmcblk0p23: 31fffc00 00000200 "system"
#mmcblk0p33: 00140200 00000200 "local"
#mmcblk0p25: 06eb5c00 00000200 "cache"
#mmcblk0p24: 4aabc400 00000200 "userdata"
#mmcblk0p29: 01400000 00000200 "devlog"
#mmcblk0p31: 00040000 00000200 "pdata"
#mmcblk0p26: 00008000 00000200 "extra"
#mmcblk0p18: 02800000 00000200 "radio"
#mmcblk0p20: 01000000 00000200 "adsp"
#mmcblk0p19: 007ffa00 00000200 "radio_config"
#mmcblk0p27: 00400000 00000200 "modem_st1"
#mmcblk0p28: 00400000 00000200 "modem_st2"
#mmcblk0p8: 00c00200 00000200 "wimax"
#mmcblk0p34: 007ffa00 00000200 "udata_wimax"

BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=shooter no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838859776
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1252770816
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/tools

# Filesystem
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p23
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_DATA_DEVICE := /dev/block/mmcblk0p24
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p25
BOARD_CACHE_FILESYSTEM := ext4
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_FSTAB := device/htc/shooter/recovery.fstab

TARGET_PREBUILT_KERNEL := device/htc/shooter/prebuilt/root/kernel

BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := 1
