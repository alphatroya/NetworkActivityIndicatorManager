// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "NetworkActivityIndicatorManager",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "NetworkActivityIndicatorManager", targets: ["NetworkActivityIndicatorManager"]),
    ],
    targets: [
        .target(
            name: "NetworkActivityIndicatorManager",
            path: "Sources"
        ),
        .testTarget(
            name: "NetworkActivityIndicatorManagerTests",
            dependencies: ["NetworkActivityIndicatorManager"]
        ),
    ]
)
