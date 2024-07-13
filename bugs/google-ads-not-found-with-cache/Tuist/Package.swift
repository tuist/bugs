// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

/*
#################################################################
# THIS FILE IS AUTO GENERATED - ALL CHANGES WILL BE OVERRIDDEN  #
# To change and update the module use the Project.swift file    #
#################################################################
*/

import PackageDescription

#if TUIST

import ProjectDescription
//import ProjectDescriptionHelpers

let packageSettings = PackageSettings(
    productTypes: [:],
    targetSettings: [:],
    projectOptions: [:]
)

#endif

let package = Package(
    name: "PackageName",
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "11.2.0"),
    ]
)
