//===----------------------------------------------------------------------===//
//
// This source file is part of the DeviceKit project
//
// Copyright © 2015 - 2016 Dennis Weissmann and all project contributors
//
//===----------------------------------------------------------------------===//

public enum TV: Device {

  /// Device is an [Apple TV](http://www.apple.com/tv/)
  ///
  /// ![Image](http://images.apple.com/v/tv/c/images/overview/buy_tv_large_2x.jpg)
  case TV4

  /// Device is [Simulator](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/iOS_Simulator_Guide/Introduction/Introduction.html)
  ///
  /// ![Image](https://developer.apple.com/assets/elements/icons/256x256/xcode-6.png)
  indirect case simulator(TV)

  /// Device is not yet known (implemented)
  /// You can still use this enum as before but the description equals the
  /// identifier (you can get multiple identifiers for the same product class
  /// (e.g. "iPhone6,1" or "iPhone 6,2" do both mean "iPhone 5s"))
  case unknownTV(String)

}

// MARK: - CustomStringConvertible
extension TV {

  public var description: String {
    switch self {
    case .TV4:                      return "Apple TV 4"
    case .simulator(let model): return "Simulator (\(model))"
    case .unknownTV(let model): return "Unkown Device (\(model))"
    }
  }

}
