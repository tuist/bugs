import ProjectDescription

let project = Project(name: "GoogleAnalyticsCacheBug", targets: [
    .target(name: "App", destinations: .iOS, product: .app, bundleId: "io.tuist.App", sources: [
        "Sources/App/**",
    ], dependencies: [.target(name: "DynamicFramework")]),
    .target(name: "DynamicFramework", destinations: .iOS, product: .framework, bundleId: "io.tuist.DynamicFramework", sources: [
        "Sources/DynamicFramework/**"
    ], dependencies: [.xcframework(path: .relativeToRoot("Vendor/GoogleAnalytics-3.20.0/Frameworks/GoogleAnalytics.xcframework"), status: .required)], settings: .settings(debug: ["GENERATE_MASTER_OBJECT_FILE": "YES", "OTHER_LDFLAGS": ""]))
])
