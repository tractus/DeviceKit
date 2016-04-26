//===----------------------------------------------------------------------===//
//
// This source file is part of the DeviceKit project
//
// Copyright © 2015 - 2016 Dennis Weissmann and all project contributors
//
//===----------------------------------------------------------------------===//

public enum Pad: Device {

  /// Device is an [iPad 2](https://support.apple.com/kb/SP622)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP622/SP622_01-ipad2-mul.png)
  case iPad2

  /// Device is an [iPad (3rd generation)](https://support.apple.com/kb/SP647)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
  case iPad3

  /// Device is an [iPad (4th generation)](https://support.apple.com/kb/SP662)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP662/sp662_ipad-4th-gen_color.jpg)
  case iPad4

  /// Device is an [iPad Air](https://support.apple.com/kb/SP692)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP692/SP692-specs_color-mul.png)
  case iPadAir

  /// Device is an [iPad Air 2](https://support.apple.com/kb/SP708)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP708/SP708-space_gray.jpeg)
  case iPadAir2

  /// Device is an [iPad Mini](https://support.apple.com/kb/SP661)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP661/sp661_ipad_mini_color.jpg)
  case iPadMini

  /// Device is an [iPad Mini 2](https://support.apple.com/kb/SP693)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP693/SP693-specs_color-mul.png)
  case iPadMini2

  /// Device is an [iPad Mini 3](https://support.apple.com/kb/SP709)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP709/SP709-space_gray.jpeg)
  case iPadMini3

  /// Device is an [iPad Mini 4](https://support.apple.com/kb/SP725)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP725/SP725ipad-mini-4.png)
  case iPadMini4

  /// Device is an [iPad Pro](http://www.apple.com/ipad-pro/)
  ///
  /// ![Image](http://images.apple.com/v/ipad-pro/c/images/shared/buystrip/ipad_pro_large_2x.png)
  case iPadPro

  /// Device is [Simulator](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/iOS_Simulator_Guide/Introduction/Introduction.html)
  ///
  /// ![Image](https://developer.apple.com/assets/elements/icons/256x256/xcode-6.png)
  indirect case simulator(Pad)

  /// Device is not yet known (implemented)
  /// You can still use this enum as before but the description equals the
  /// identifier (you can get multiple identifiers for the same product class
  /// (e.g. "iPhone6,1" or "iPhone 6,2" do both mean "iPhone 5s"))
  case unknownPad(String)

}

// MARK: - CustomStringConvertible
extension Pad {

  public var description: String {
    switch self {
    case .iPad2:                      return "iPad 2"
    case .iPad3:                      return "iPad 3"
    case .iPad4:                      return "iPad 4"
    case .iPadAir:                    return "iPad Air"
    case .iPadAir2:                   return "iPad Air 2"
    case .iPadMini:                   return "iPad Mini"
    case .iPadMini2:                  return "iPad Mini 2"
    case .iPadMini3:                  return "iPad Mini 3"
    case .iPadMini4:                  return "iPad Mini 4"
    case .iPadPro:                    return "iPad Pro"
    case .simulator(let model):       return "Simulator (\(model))"
    case .unknownPad(let identifier): return "Unknown iPad (\(identifier))"
    }
  }

}
