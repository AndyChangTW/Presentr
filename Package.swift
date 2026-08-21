// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Presentr",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "Presentr",
            targets: ["Presentr"]
        )
    ],
    targets: [
        .target(
            name: "Presentr",
            path: "Sources/Presentr",
            resources: [
                .process("AlertViewController.xib"),
                .process("Montserrat-Regular.ttf"),
                .process("SourceSansPro-Regular.ttf")
            ]
        ),
        .testTarget(
            name: "PresentrTests",
            dependencies: ["Presentr"],
            path: "Tests/PresentrTests"
        )
    ]
)
