// ===----------------------------------------------------------------------===//
//
// This source file is part of the DeviceKit project
//
// Copyright © 2015 - 2016 Dennis Weissmann and all project contributors
//
//===----------------------------------------------------------------------===//

public struct Battery {

  /**
   This enum describes the state of the battery.
   - full:      The device is plugged into power and the battery is 100% charged or the device is the iOS Simulator.
   - charging:  The device is plugged into power and the battery is less than 100% charged.
   - unplugged: The device is not plugged into power; the battery is discharging.
   */
  public enum State: CustomStringConvertible, Equatable {
    /// The device is plugged into power and the battery is 100% charged or the device is the iOS Simulator.
    case full
    /// The device is plugged into power and the battery is less than 100% charged.
    /// The associated value is in percent (0-100).
    case charging(Int)
    /// The device is not plugged into power; the battery is discharging.
    /// The associated value is in percent (0-100).
    case unplugged(Int)

    internal init() {
      // TODO: Platform independent implementation
      self = .full
//      UIDevice.currentDevice().batteryMonitoringEnabled = true
//      let batteryLevel = Int(round(UIDevice.currentDevice().batteryLevel * 100))  // round() is actually not needed anymore since -[batteryLevel] seems to always return a two-digit precision number
//                                                                                  // but maybe that changes in the future.
//      switch UIDevice.currentDevice().batteryState {
//      case .Charging: self = .Charging(batteryLevel)
//      case .Full:     self = .Full
//      case .Unplugged:self = .Unplugged(batteryLevel)
//      case .Unknown:  self = .Full    // Should never happen since `batteryMonitoring` is enabled.
//      }
//      UIDevice.currentDevice().batteryMonitoringEnabled = false
    }

    public var description: String {
      switch self {
      case .charging(let batteryLevel): return "Battery level: \(batteryLevel)%, device is plugged in."
      case .full: return "Battery level: 100 % (Full), device is plugged in."
      case .unplugged(let batteryLevel): return "Battery level: \(batteryLevel)%, device is unplugged."
      }
    }
  }

  /// The state of the battery
  public var state: State? {
    return State()
  }

  /// Battery level ranges from 0 (fully discharged) to 100 (100% charged).
  public var level: Int {
    switch State() {
    case .charging(let value): return value
    case .full: return 100
    case .unplugged(let value): return value
    }
  }

  internal init?() {}

}

// MARK: - Device.Batterystate: Comparable
extension Battery.State: Comparable { }

public func == (lhs: Battery.State, rhs: Battery.State) -> Bool {
  return lhs.description == rhs.description
}

public func < (lhs: Battery.State, rhs: Battery.State) -> Bool {
  switch (lhs, rhs) {
  case (.full, _): return false // return false (even if both are `.Full` -> they are equal)
  case (_, .full): return true // lhs is *not* `.Full`, rhs is
  case (.charging(let lhsLevel), .charging(let rhsLevel)): return lhsLevel < rhsLevel
  case (.charging(let lhsLevel), .unplugged(let rhsLevel)): return lhsLevel < rhsLevel
  case (.unplugged(let lhsLevel), .charging(let rhsLevel)): return lhsLevel < rhsLevel
  case (.unplugged(let lhsLevel), .unplugged(let rhsLevel)): return lhsLevel < rhsLevel
  default: return false // compiler won't compile without it, though it cannot happen
  }
}
