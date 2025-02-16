#!/system/bin/sh
MODDIR=${0%/*}

wait_for_boot() {
    while [ "$(getprop sys.boot_completed)" != "1" ]; do
        sleep 1
    done
}

wait_for_boot

ANDROID_VERSION=$(getprop ro.build.version.release)

if [ "$ANDROID_VERSION" = "13" ] || [ "$ANDROID_VERSION" = "14" ] || [ "$ANDROID_VERSION" = "15" ] || [ "$ANDROID_VERSION" = "16" ]; then
    service call sensor_privacy 9 i32 1
elif [ "$ANDROID_VERSION" = "12" ]; then
    service call sensor_privacy 8 i32 1
elif [ "$ANDROID_VERSION" = "11" ] || [ "$ANDROID_VERSION" = "10" ]; then
    service call sensor_privacy 4 i32 1
fi