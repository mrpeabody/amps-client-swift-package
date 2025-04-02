// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "amps-client-swift",
    platforms: [.iOS(.v18), .macOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "amps-client-swift",
            type: .dynamic,
            targets: ["ampsplusplus", "amps-client-swift", "ampsswift", "AMPS.Swift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/OpenSSL-Package.git", from: "3.3.1000")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "amps-client-swift",
            url: "https://github.com/mrpeabody/amps-client-swift-package/releases/download/develop/amps-client-swift.xcframework.zip",
            checksum: "b30fb034583f3deba37214964dceff0856ee48383194f1c9ce530101ae264efc"
            ),
    ],
    cLanguageStandard: .c11,
    cxxLanguageStandard: .cxx14
)
