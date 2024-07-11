# GoogleAnalytics not found when using the cache

## Scenario

The project contains an app that links a static XCFramework transitively, `GoogleAnalytics.xcframework`, through a dynamic framework that links `GoogleAnalytics`. The project compiles successfully, however, when the dynamic framework is cached with `tuist cache`, the generated app with binaries fails to compile because it says that `GoogleAnalytics` is not found.

