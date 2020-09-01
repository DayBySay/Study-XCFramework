# See also
https://help.apple.com/xcode/mac/11.4/#/dev544efab96

# installing
```
$ make install
```

# build
```
$ make build
```

# Build Directories
```
Output
├── Release-archive
│   ├── ios.xcarchive
│   │   ├── BCSymbolMaps
│   │   │   └── DF8D2E04-B9CD-3707-961D-E8EA81294BD8.bcsymbolmap
│   │   ├── Info.plist
│   │   ├── Products
│   │   │   └── Library
│   │   │       └── Frameworks
│   │   │           └── Study_XCFramework.framework
│   │   │               ├── Headers
│   │   │               │   ├── Study_XCFramework-Swift.h
│   │   │               │   └── Study_XCFramework.h
│   │   │               ├── Info.plist
│   │   │               ├── Modules
│   │   │               │   ├── Study_XCFramework.swiftmodule
│   │   │               │   │   ├── arm64-apple-ios.swiftdoc
│   │   │               │   │   ├── arm64-apple-ios.swiftinterface
│   │   │               │   │   ├── arm64-apple-ios.swiftmodule
│   │   │               │   │   ├── arm64.swiftdoc
│   │   │               │   │   ├── arm64.swiftinterface
│   │   │               │   │   └── arm64.swiftmodule
│   │   │               │   └── module.modulemap
│   │   │               ├── Study_XCFramework
│   │   │               └── _CodeSignature
│   │   │                   └── CodeResources
│   │   └── dSYMs
│   │       └── Study_XCFramework.framework.dSYM
│   │           └── Contents
│   │               ├── Info.plist
│   │               └── Resources
│   │                   └── DWARF
│   │                       └── Study_XCFramework
│   └── iossimulator.xcarchive
│       ├── Info.plist
│       ├── Products
│       │   └── Library
│       │       └── Frameworks
│       │           └── Study_XCFramework.framework
│       │               ├── Headers
│       │               │   ├── Study_XCFramework-Swift.h
│       │               │   └── Study_XCFramework.h
│       │               ├── Info.plist
│       │               ├── Modules
│       │               │   ├── Study_XCFramework.swiftmodule
│       │               │   │   ├── x86_64-apple-ios-simulator.swiftdoc
│       │               │   │   ├── x86_64-apple-ios-simulator.swiftinterface
│       │               │   │   ├── x86_64-apple-ios-simulator.swiftmodule
│       │               │   │   ├── x86_64.swiftdoc
│       │               │   │   ├── x86_64.swiftinterface
│       │               │   │   └── x86_64.swiftmodule
│       │               │   └── module.modulemap
│       │               ├── Study_XCFramework
│       │               └── _CodeSignature
│       │                   └── CodeResources
│       └── dSYMs
│           └── Study_XCFramework.framework.dSYM
│               └── Contents
│                   ├── Info.plist
│                   └── Resources
│                       └── DWARF
│                           └── Study_XCFramework
└── Release-xcframework
    └── Study_XCFramework.xcframework
        ├── Info.plist
        ├── ios-arm64
        │   └── Study_XCFramework.framework
        │       ├── Headers
        │       │   ├── Study_XCFramework-Swift.h
        │       │   └── Study_XCFramework.h
        │       ├── Info.plist
        │       ├── Modules
        │       │   ├── Study_XCFramework.swiftmodule
        │       │   │   ├── arm64-apple-ios.swiftdoc
        │       │   │   ├── arm64-apple-ios.swiftinterface
        │       │   │   ├── arm64.swiftdoc
        │       │   │   └── arm64.swiftinterface
        │       │   └── module.modulemap
        │       ├── Study_XCFramework
        │       └── _CodeSignature
        │           └── CodeResources
        └── ios-x86_64-simulator
            └── Study_XCFramework.framework
                ├── Headers
                │   ├── Study_XCFramework-Swift.h
                │   └── Study_XCFramework.h
                ├── Info.plist
                ├── Modules
                │   ├── Study_XCFramework.swiftmodule
                │   │   ├── x86_64-apple-ios-simulator.swiftdoc
                │   │   ├── x86_64-apple-ios-simulator.swiftinterface
                │   │   ├── x86_64.swiftdoc
                │   │   └── x86_64.swiftinterface
                │   └── module.modulemap
                ├── Study_XCFramework
                └── _CodeSignature
                    └── CodeResources
```

