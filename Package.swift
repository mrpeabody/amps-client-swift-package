// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "amps-client-swift",
    platforms: [.iOS(.v18), .macOS(.v14)],
    products: [
        .library(
            name: "amps-client-swift",
            targets: ["amps-client-swift"]),
    ],
    targets: [
        .binaryTarget(
            name: "OpenSSL",
            path: "Frameworks/amps-client-swift.xcframework.zip",
        )
    ]
)
