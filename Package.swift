// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MagicalRecord",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v9),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "MagicalRecord",
            targets: ["MagicalRecord"])
    ],
    targets: [
        .target(
            name: "MagicalRecord",
            dependencies: [],
            path: "MagicalRecord",
            sources: ["Core", "Categories"],
            cSettings: [
                .headerSearchPath(""),
                .headerSearchPath("Core"),
                .headerSearchPath("Categories"),
                .headerSearchPath("Categories/DataImport"),
                .headerSearchPath("Categories/NSManagedObject"),
                .headerSearchPath("Categories/NSManagedObjectContext"),
                .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release))
            ]
        )
    ]
)
