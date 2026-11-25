# VoiceAI_iOS_SwiftPM

Swift Package Manager distribution of TXLiteAVSDK_VoiceAI_iOS (iOS).

对应 CocoaPods 版本：`pod 'TXLiteAVSDK_VoiceAI_iOS', '13.6.0.255'`

## 集成方式

Xcode: File -> Add Package Dependencies，输入仓库地址：

```
https://github.com/Tencent-RTC/VoiceAI_iOS_SwiftPM.git
```

或在 `Package.swift` 中声明依赖：

```swift
dependencies: [
    .package(url: "https://github.com/Tencent-RTC/VoiceAI_iOS_SwiftPM.git", from: "<tag>")
]
```

## 使用

```swift
import TXLiteAVSDK_VoiceAI_iOS
```

包内以 binaryTarget 形式分发 `TXLiteAVSDK_VoiceAI_iOS.xcframework`（ios-arm64 + ios-arm64_x86_64-simulator），wrapper target 已携带与 CocoaPods podspec 一致的系统框架及 libc++ 链接配置，无需额外设置。
