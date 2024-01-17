// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SimpleConstraints",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "SimpleConstraints",
            targets: ["SimpleConstraints"]),
    ],
    targets: [
        .target(
            name: "SimpleConstraints"),
        .testTarget(
            name: "SimpleConstraintsTests",
            dependencies: ["SimpleConstraints"]),
    ]
)
