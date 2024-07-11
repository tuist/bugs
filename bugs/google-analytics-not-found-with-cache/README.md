# GoogleAnalytics not found when using the cache

## Scenario

The project contains an app that links a static XCFramework transitively, `GoogleAnalytics.xcframework`, through a dynamic framework that links `GoogleAnalytics`. The project compiles successfully, however, when the dynamic framework is cached with `tuist cache`, the generated app with binaries fails to compile because it says that `GoogleAnalytics` is not found.

## Solution

The solution is captured [here](https://forums.swift.org/t/distribute-xcframework-with-mixed-implementation-only-and-exported-dependencies/57863) and the TL;DR is:

- The compiler needs to see all the Swift modules at build-time, either via .swiftmodule/.swiftinterface or module maps, and XCFrameworks **only contain one**.
- If no GoogleAnalytics code is used publicly, a solution would be importing GoogleAnalytics using `@_implementationOnly import GoogleAnalytics`.
- Alternatively, Tuist can detect this scenario and propagate some settings to instruct the compiler where modules are located. For example, App could have a setting that tells the compiler where the GoogleAnalytics module is located. However, it'd require some changes in Tuist to support this.