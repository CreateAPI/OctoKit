// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OctoKit",
    platforms: [.iOS(.v15), .macCatalyst(.v15), .macOS(.v12), .watchOS(.v8), .tvOS(.v15)],
    products: [
        .library(name: "OctoKit", targets: ["OctoKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kean/APIClient", from: "0.0.1"),
    ],
    targets: [
        .target(name: "OctoKit", dependencies: [.product(name: "APIClient", package: "APIClient")]),
        .testTarget(name: "OctoKitTests", dependencies: ["OctoKit"]),
    ]
)
