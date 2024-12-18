// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PermissionManagerLibrary",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PermissionManagerLibrary",
            targets: ["PermissionManagerLibrary"]),
    ],
    targets: [
        .binaryTarget(
            name: "PermissionManagerFramework", // .xcframework 타겟 참조
            path: "Frameworks/PermissionManagerFramework.xcframework" // .xcframework 경로
        ),
        .target(
            name: "PermissionManagerLibrary",
            dependencies: [
                .target(name: "PermissionManagerFramework"), // .xcframework 링크
            ]
        ),

    ]
)
