// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "fledge-plugin-ascii",
    platforms: [.macOS(.v13)],
    targets: [
        .executableTarget(
            name: "fledge-plugin-ascii",
            path: "Sources"
        )
    ]
)
