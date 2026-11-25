// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VoiceAI_iOS_SwiftPM",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VoiceAI_iOS_SwiftPM",
            targets: ["VoiceAI_iOS_SwiftPM"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "TXLiteAVSDK_VoiceAI_iOS",
            url: "https://dl.gmertc.com/voiceai/13.6.0/VoiceAI_iOS_sdk_13.6.0.255.zip",
            checksum: "4d1d0c49b3b1213d50bbb8ed3840802bce5f391f7e3a0d99135f9560fcc18dff"
        ),
        .target(
            name: "VoiceAI_iOS_SwiftPM",
            dependencies: [
                .target(name: "TXLiteAVSDK_VoiceAI_iOS")
            ],
            path: "Sources/VoiceAI_iOS_SwiftPM",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreAudio"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreText"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("Accelerate"),
                .linkedFramework("Security"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedLibrary("c++")
            ]
        )
    ]
)
