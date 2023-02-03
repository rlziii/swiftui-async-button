// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "swiftui-async-button",
    products: [
        .library(
            name: "SwiftUIAsyncButton",
            targets: ["SwiftUIAsyncButton"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftUIAsyncButton",
            dependencies: []
        ),
    ]
)
