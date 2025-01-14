rm -rf Vendor/*
rm -rf archives/*
rm -rf xcframeworks/*
rmdir Vendor
mkdir Vendor
cp -a ../plCrashReporter/xcframeworks/CrashReporter.xcframework Vendor/
xcodebuild archive -project Support/HockeySDK.xcodeproj -scheme "HockeySDK" -configuration "ReleaseCrashOnly" -destination "generic/platform=macOS" -archivePath "archives/HockeySDK"
xcodebuild -create-xcframework -archive archives/HockeySDK.xcarchive -framework HockeySDK.framework -output xcframeworks/HockeySDK-macOS.xcframework
