# amps-client-swift-package

`amps-client-swift-package` is [Swift Package Manager](https://swift.org/package-manager/) package of the AMPS Swift client
for iOS, and macOS. The package comes with precompiled libraries.

## SwiftPM

This repository exists to vendor amps-client-swift.xcframework as SwiftPM package.
The binary is built as part of the main repository: https://github.com/60East/amps-client-swift

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/mrpeabody/amps-client-swift-package.git", from: "develop")
]
```

and then as a dependency for the Package target utilizing OpenSSL:

```swift
.target(
    name: "MyApp",
    dependencies: [
        .product(name: "amps-client-swift", package: "amps-client-swift-package")
    ]
),
```
