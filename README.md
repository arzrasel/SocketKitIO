# SocketKitIO

[![Rz Rasel](https://raw.githubusercontent.com/arzrasel/svg/main/rz-rasel-blue.svg)](https://github.com/rzrasel)
[![CI Status](https://img.shields.io/travis/arzrasel/SocketKitIO.svg?style=flat)](https://travis-ci.org/arzrasel/SocketKitIO)
[![Version](https://img.shields.io/cocoapods/v/SocketKitIO.svg?style=flat)](https://cocoapods.org/pods/SocketKitIO)
[![License](https://img.shields.io/cocoapods/l/SocketKitIO.svg?style=flat)](https://cocoapods.org/pods/SocketKitIO)
[![Platform](https://img.shields.io/cocoapods/p/SocketKitIO.svg?style=flat)](https://cocoapods.org/pods/SocketKitIO)
[![GitHub release](https://img.shields.io/github/tag/arzrasel/SocketKitIO.svg)](https://github.com/arzrasel/SocketKitIO/releases)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
[![Xcode](https://img.shields.io/badge/Xcode-11.4-blue.svg)](https://developer.apple.com/xcode)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 11
- Swift 5
- Xcode 12

## Installation

SocketKitIO is available through [CocoaPods](https://cocoapods.org/pods/SocketKitIO). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SocketKitIO'
```

or

```SocketKitIOMain
pod 'SocketKitIO', '~> 1.0'

## Integration In Project

```IntegrationInProject
import SocketIOClient
```

## SocketIOClient declaration

```SocketIOClientDeclaration
let socketIOManager = SocketIOManager(isLog: true)
```

## SocketIOClient setup

```
func setupIncoming() {
    //Initial setup
    socketIOManager.params(key: "SOCKET_AUTH_KEY", value: "SOCKET_AUTH_TOKEN")
        .with(url: AppConstant.HTTP.API.SOCKET_IO)
    socketIOManager.prepareConnection()
    //Socket response setup
    //Response One
    socketIOManager.socketOn(name: "SOCKET_KEY_ONE") {name, data, ack in
        print("Socket key name: \(name), socket data: \(data)")
    }
    socketIOManager.socketOn(name: "SOCKET_KEY_TWO") {name, data, ack in
        print("Socket key name: \(name), socket data: \(data)")
    }
    //...
    /*
    //As many as you have need
    */
}
```

## SocketIOClient setup

```
let emitData = [
    "key": "value",
    "key": "value",
    "key": "value",
    "key": "value"
    //....
]
socketIOManager.emit(name: "SOCKET_KEY_ONE", params: emitData)
```

## Author

Md. Rashed - Uz - Zaman (Rz Rasel)

## License

SocketKitIO is available under the MIT license. See the LICENSE file for more info.
