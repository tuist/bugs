import ProjectDescription

let project = Project(name: "PublicXCFrameworkCacheBug", 
                      targets: [
                        .target(name: "App", destinations: .iOS, product: .app,
                                bundleId: "io.tuist.App",
                                infoPlist: .extendingDefault(with: [
                                    "GADApplicationIdentifier": "ca-app-pub-3940256099942544~1458002511",
                                    "SKAdNetworkItems": [
                                        ["SKAdNetworkIdentifier": "cstr6suwn9.skadnetwork"],
                                    ]
                                ]),
                                sources: ["Sources/App/**",],
                                
                                dependencies: [.target(name: "DynamicFramework")]),
                        .target(name: "DynamicFramework", destinations: .iOS, product: .framework,
                                bundleId: "io.tuist.DynamicFramework",
                                sources: ["Sources/DynamicFramework/**"],
                                dependencies: [.external(name: "GoogleMobileAds")],
                                settings: .settings(debug: ["GENERATE_MASTER_OBJECT_FILE": "YES", "OTHER_LDFLAGS": ""]))
])
