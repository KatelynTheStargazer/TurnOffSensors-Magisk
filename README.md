# Turn Off Sensors

Disables device sensors on startup via the sensor_privacy service on Android (see: [source.android.com](https://source.android.com/docs/core/interaction/sensors/sensors-off))

Tested: Android 10 to Android 16 beta (All builds as of 3/16/2025)

Note: This will not work on Android Builds older than Android 10 due to the sensor_privacy service being nonexistant.

# Install

1. Build or download the zip from releases.
2. Open magisk app and click the modules tab, choose install from storage and select the zip file you downloaded in the previous step.
3. Wait for installation.
4. Reboot your device.
5. Now whoever you're hiding from can no longer see you.

# Build

Run make to create the zip. 

Note: The 'zip' command line utility is required.
