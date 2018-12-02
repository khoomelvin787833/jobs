// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Jobs",
    products: [
        .library(
            name: "Jobs",
            targets: ["Jobs"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/redis.git", from: "3.0.0")
    ],
    targets: [
        .target(
            name: "Jobs",
            dependencies: ["Vapor", "Redis"]),
        .testTarget(
            name: "JobsTests",
            dependencies: ["Jobs"]),
    ]
)
