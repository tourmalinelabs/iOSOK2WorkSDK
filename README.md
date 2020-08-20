# OK2Work

This framework runs in the background and identifies other people running the app within the local area by using low energy Bluetooth. While the app is running permanently in the background, it periodically broadcasts and listens for other Bluetooth-enabled devices that also broadcast the same unique identifier.

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects. For usage and installation instructions, please visit their website. To integrate OK2Work into your Xcode project using CocoaPods, please add the following in your Podfile:

```ruby
source 'https://github.com/tourmalinelabs/iOSOK2WorkSDK.git'
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '13.0'
use_frameworks!

target 'YourTarget' do
  pod 'OK2Work'
end
```

Please notice that the source declaration order is important.

### Manually

If you prefer not to use any a dependency managers, you can integrate OK2Work into your project manually.

#### Embedded Framework
// TODO


## Usage

```swift
import OK2Work

// Your client id
let clientId = ""

// Your client secret
let clientSecret = ""

// Your registration URL
let registrationURL = ""

// Create a manager
let manager = OK2WorkManager(
    clientId: clientId,
    clientSecret: clientSecret,
    registrationURL: registrationURL)

// Check if the manager has already been registered
if !manager.isRegistered {

    // Get your OTR code
    let otr: String = ...

    // Register manager using the OTR code
    manager.register(otr) { [weak self]  result in
        guard let self = self else { return }
        switch result {
        case .success:
            // Registration succeed then start
            self.manager.start()
        case .failure(let error):
            // Handle the failure
            debugPrint(error)
        }
    }
} else {
    // Already registered then start directly
    manager.start()
}

```

## License

OK2Work is released under Commercial license. See [LICENSE](https://github.com/tourmalinelabs/iOSOK2WorkSDK/blob/master/LICENSE.md) for details.
