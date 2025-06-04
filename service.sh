#!/system/bin/sh

while [ "$(getprop init.svc.vendor.sensors-hal-multihal)" != "running" ]; do
  sleep 0.1
done

ANDROID_VERSION=$(getprop ro.build.version.release)
case "$ANDROID_VERSION" in
  13|14|15|16)
    service call sensor_privacy 9 i32 1
    ;;
  12)
    service call sensor_privacy 8 i32 1
    ;;
  10|11)
    service call sensor_privacy 4 i32 1
    ;;
esac
