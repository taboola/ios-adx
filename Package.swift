// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "TaboolaSDK-AdX",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "TaboolaSDK-AdX",
            type: .static,
            targets: ["TaboolaSDK-AdX"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads",
            "12.0.0"..<"13.0.0"
        )
    ],
    targets: [
        .target(
            name: "TaboolaSDK-AdX",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ],
            path: "TBLAdxPlugin",
            sources: [
                "TBLAdxPlugin.h",
                "TBLAdxPlugin.m"
            ],
            publicHeadersPath: "."
        )
    ]
)
