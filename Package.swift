// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "NotificationBannerSwift",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "NotificationBannerSwift", targets: ["NotificationBannerSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.7.1"),
        .package(url: "https://github.com/almazrafi/MarqueeLabel", revision: "73cc8ee10800b8b12a4d1bb8f816f2fa30409013")
    ],
    targets: [
        .target(
            name: "NotificationBannerSwift",
            dependencies: [.byName(name: "MarqueeLabel"), .byName(name: "SnapKit")],
            path: "NotificationBanner/Classes"
        )
    ],
    swiftLanguageVersions: [.v5]
)
