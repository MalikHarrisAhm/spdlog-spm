// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "spdlog",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "spdlog",
            targets: ["spdlog"])
    ],
    targets: [
        .target(name: "spdlog",
                path: "spdlog",
                exclude: [
                ],
                sources: [
                    "src"
                ],
                publicHeadersPath: "include",
                cSettings: [
                    .define("SPDLOG_COMPILED_LIB")
                ]
               )
    ],
    cxxLanguageStandard: .cxx20
)
