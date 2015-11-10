# Clean repository, DerivedData folder and simulator
git reset --hard
git clean -fd
rm -rf ~/Library/Developer/Xcode/DerivedData/PhotoMap*
#xcrun simctl erase all
# Unit tests
xctool \
-scheme PhotoMapTests \
#-workspace PhotoMap.xcodeproj \
#-destination "platform=iOS Simulator,name=iPhone 6,OS=8.3" \9
-sdk iphonesimulator \
-reporter junit:test-results/TEST-UnitTests.xml \
-reporter pretty \
clean test