# Tuist-GoogleAds
GoogleMobileAds not found when using the cache

This bug is directly related to [this bug](https://github.com/tuist/bugs/tree/main/bugs/google-analytics-not-found-with-cache), where and xcframework that is wrapped by SPM as a binaryTarget, cannot be found when using cache.

The 3d party exposing the discussed framework is [GoogleAds](https://github.com/googleads/swift-package-manager-google-mobile-ads/tree/main)

## Structure
App -> DynamicFramework -> GoogleMobileAds

## Steps to reproduce

1) Make sure you have Tuist installed [LINK](https://docs.tuist.io/guide/introduction/installation.html)
2) Clone this repo `git clone --depth=1 https://github.com/danibachar/Tuist-GoogleAds.git`
3) Run the following tuist commands
   1) `tuist install`
   2) `tuist cache App`
   3) `tuist generate App`

Try to build the application and notice the `Missing required module 'GoogleMobileAds'`

## Discussion

While with original [bug](https://github.com/tuist/bugs/tree/main/bugs/google-analytics-not-found-with-cache), we could have solved the error manually by using import with `@_implementationOnly` annotations, such that the framework APIs will not "leak" publicly. In the following case we cannot, as the xcframework exposes Objective-C APIs and protocols, one must conform to it publicly and using the `@_implementationOnly` annotations will fail the build with different errors regarding that import type - `DynamicFramework.swift:12:38: Cannot use class 'GADBannerView' here; 'GoogleMobileAds' has been imported as implementation-only`

