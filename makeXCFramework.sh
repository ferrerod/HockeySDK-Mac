mkdir -p Vendor
mkdir -p archives
mkdir -p xcframeworks
rm -rf Vendor/*
rm -rf archives/*
rm -rf xcframeworks/*
rmdir Vendor
mkdir Vendor
ditto ../plCrashReporter/xcframeworks/CrashReporter.xcframework Vendor/CrashReporter.xcframework
xcodebuild archive -project Support/HockeySDK.xcodeproj -scheme "HockeySDK" -configuration "ReleaseCrashOnly" -destination "generic/platform=macOS" -archivePath "archives/HockeySDK"
xcodebuild -create-xcframework -archive archives/HockeySDK.xcarchive -framework HockeySDK.framework -output xcframeworks/HockeySDK-macOS.xcframework
