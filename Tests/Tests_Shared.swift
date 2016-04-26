// ===----------------------------------------------------------------------===//
//
// This source file is part of the DeviceKit project
//
// Copyright © 2015 - 2016 Dennis Weissmann and all project contributors
//
//===----------------------------------------------------------------------===//

import XCTest
@testable import DeviceKit

class DeviceKitSharedTests: XCTestCase {

  func testCurrentDeviceGroup() {
    let currentDevice = DeviceKit.currentDevice
    switch currentDevice {
    case is Pad: print("Is iPad")
    case is Phone: print("Is iPhone")
    case is TV: print("Is TV")
    default: break
    }
  }

  func testCurrentDevice() {
    let currentDevice = DeviceKit.currentDevice
    switch currentDevice {
    case let currentDevice as Pad:
      switch currentDevice {
      case .iPad2: print("Is iPad 2")
      case .iPad3: print("Is iPad 3")
      case .iPad4: print("Is iPad 4")
      case .iPadAir: print("Is iPad Air")
      case .iPadAir2: print("Is iPad Air 2")
      case .iPadMini: print("Is iPad Mini")
      case .iPadMini2: print("Is iPad Mini 2")
      case .iPadMini3: print("Is iPad Mini 3")
      case .iPadMini4: print("Is iPad Mini 4")
      case .iPadPro: print("Is iPad Pro")
      case .simulator(let pad): print("Is iPad simulator: \(pad)")
      case .unknownPad(let unknown): print("Currenlty unknown device: \(unknown)")
      }
    case is Phone: print("Is iPhone")
    default: break
    }
    // Or a short way:
    print("\(currentDevice)")
  }

}
