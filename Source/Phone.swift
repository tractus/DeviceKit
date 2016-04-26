//===----------------------------------------------------------------------===//
//
// This source file is part of the DeviceKit project
//
// Copyright © 2015 - 2016 Dennis Weissmann and all project contributors
//
//===----------------------------------------------------------------------===//

import struct Darwin.sys.utsname
import func Darwin.sys.uname
import func Darwin.sys.getenv

public enum Phone: Device {

  /// Device is an [iPhone 4](https://support.apple.com/kb/SP587)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP643/sp643_iphone4s_color_black.jpg)
  case iPhone4

  /// Device is an [iPhone 4s](https://support.apple.com/kb/SP643)
  ///
  /// ![Image](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/iphone/iphone5s/iphone_4s.png)
  case iPhone4s

  /// Device is an [iPhone 5](https://support.apple.com/kb/SP655)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP655/sp655_iphone5_color.jpg)
  case iPhone5

  /// Device is an [iPhone 5c](https://support.apple.com/kb/SP684)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP684/SP684-color_yellow.jpg)
  case iPhone5c

  /// Device is an [iPhone 5s](https://support.apple.com/kb/SP685)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP685/SP685-color_black.jpg)
  case iPhone5s

  /// Device is an [iPhone 6](https://support.apple.com/kb/SP705)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP705/SP705-iphone_6-mul.png)
  case iPhone6

  /// Device is an [iPhone 6 Plus](https://support.apple.com/kb/SP706)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP706/SP706-iphone_6_plus-mul.png)
  case iPhone6Plus

  /// Device is an [iPhone 6s](https://support.apple.com/kb/SP726)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP726/SP726-iphone6s-gray-select-2015.png)
  case iPhone6s

  /// Device is an [iPhone 6s Plus](https://support.apple.com/kb/SP727)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP727/SP727-iphone6s-plus-gray-select-2015.png)
  case iPhone6sPlus

  /// Device is an [iPhone SE](https://support.apple.com/kb/SP738)
  ///
  /// ![Image](https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP738/SP738.png)
  case iPhoneSE

  /// Device is [Simulator](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/iOS_Simulator_Guide/Introduction/Introduction.html)
  ///
  /// ![Image](https://developer.apple.com/assets/elements/icons/256x256/xcode-6.png)
  indirect case simulator(Phone)

  /// Device is not yet known (implemented)
  /// You can still use this enum as before but the description equals the
  /// identifier (you can get multiple identifiers for the same product class
  /// (e.g. "iPhone6,1" or "iPhone 6,2" do both mean "iPhone 5s"))
  case unknownPhone(String)

}

// MARK: - CustomStringConvertible
extension Phone {

  public var description: String {
    switch self {
    case .iPhone4:                  return "iPhone 4"
    case .iPhone4s:                 return "iPhone 4s"
    case .iPhone5:                  return "iPhone 5"
    case .iPhone5c:                 return "iPhone 5c"
    case .iPhone5s:                 return "iPhone 5s"
    case .iPhone6:                  return "iPhone 6"
    case .iPhone6Plus:              return "iPhone 6 Plus"
    case .iPhone6s:                 return "iPhone 6s"
    case .iPhone6sPlus:             return "iPhone 6s Plus"
    case .iPhoneSE:                 return "iPhone SE"
    case .simulator(let model):     return "Simulator (\(model))"
    case .unknownPhone(let model):  return "Unkown iPhone (\(model))"
    }
  }

}
