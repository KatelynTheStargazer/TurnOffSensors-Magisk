MODDIR=${0%/*}

sleep 8

ANDROID_VERSION=$(getprop ro.build.version.release)

if [ "$ANDROID_VERSION" = "13" ] || [ "$ANDROID_VERSION" = "14" ] || [ "$ANDROID_VERSION" = "15" ] || [ "$ANDROID_VERSION" = "16" ]; then
    service call sensor_privacy 9 i32 1
elif [ "$ANDROID_VERSION" = "12" ]; then
    service call sensor_privacy 8 i32 1
elif [ "$ANDROID_VERSION" = "11" ] || [ "$ANDROID_VERSION" = "10" ]; then
    service call sensor_privacy 4 i32 1
fi
