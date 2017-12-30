#!/sbin/sh
#
# deunify
#

PROJECT_NAME=$(cat /sys/project_info/project_name)

case "$PROJECT_NAME" in
  16859)
    # OnePlus 5 - cheeseburger
    ln -s /system/vendor/etc/mixer_paths_cheeseburger.xml /system/vendor/etc/mixer_paths_tasha.xml
    rm /system/etc/firmware/tp/fw_synaptics_17801.img
    ;;
  17801)
    # OnePlus 5T - dumpling
    ln -s /system/vendor/etc/mixer_paths_dumpling.xml /system/vendor/etc/mixer_paths_tasha.xml
    ;;
  *)
    echo "Unable to determine device type!"
    exit 1
esac

exit 0
