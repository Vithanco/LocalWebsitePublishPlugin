// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocalWebsitePublishPlugin",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "LocalWebsitePublishPlugin",
            targets: ["LocalWebsitePublishPlugin"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.9.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "LocalWebsitePublishPlugin",
            dependencies: ["Publish"]),
        .testTarget(
            name: "LocalWebsitePublishPluginTests",
            dependencies: ["LocalWebsitePublishPlugin"]),
    ]
)
