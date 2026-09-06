// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SolarKit",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "SolarKit", targets: ["SolarKit"])
    ],
    targets: [
        .target(
            name: "SolarKit",
            resources: [.process("Resources/Solar.xcassets")]
        )
    ]
)
