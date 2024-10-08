// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "FeedbackKit",
    platforms: [
        .iOS(.v15),
        .watchOS(.v8),
        .macOS(.v11),
        .tvOS(.v15),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "FeedbackKit",
            targets: ["FeedbackKit"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/0xLeif/AppState.git", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "FeedbackKit",
            dependencies: [
                "AppState"
            ]
        ),
        .testTarget(
            name: "FeedbackKitTests",
            dependencies: ["FeedbackKit"]
        )
    ]
)
