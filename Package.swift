// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GamesLib",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "GamesLib", targets: ["CoreTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", exact: "5.9.1"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", exact: "5.0.2"),
        .package(url: "https://github.com/onevcat/Kingfisher", from: "7.11.0"),
    ],
    targets: [
        .target( 
            name: "CoreTarget",
            dependencies: [
                "CoreBinary", 
                  .product(name: "Alamofire", package: "Alamofire"),
                  .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                  .product(name: "Kingfisher", package: "Kingfisher"),
            ],
        ),   
        .binaryTarget(
            name: "CoreBinary", 
            path: "GamesLib.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)
