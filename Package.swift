// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "SwiftUITextView",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "SwiftUITextView", targets: ["SwiftUITextView"]),
    ],
    targets: [
        .target(
            name: "SwiftUITextView",
            dependencies: []),
    ]
)
