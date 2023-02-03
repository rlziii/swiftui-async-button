// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "swiftui-async-button",
    products: [
        .library(
            name: "swiftui-async-button",
            targets: ["swiftui-async-button"]),
    ],
    targets: [
        .target(
            name: "swiftui-async-button",
            dependencies: []
        ),
    ]
)
