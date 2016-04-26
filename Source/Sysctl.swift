//===----------------------------------------------------------------------===//
//
// This source file is part of the DeviceKit project
//
// Copyright © 2015 - 2016 Dennis Weissmann and all project contributors
//
//===----------------------------------------------------------------------===//

import func Darwin.sys.sysctl

internal func sysctl(identifier: [Int32]) -> String? {
  var localIdentifier = identifier
  // get buffer size
  var bufferSize: Int = 0
  sysctl(&localIdentifier, UInt32(identifier.count), nil, &bufferSize, nil, 0)
  // get the value
  var buildBuffer = [CChar](repeating: 0, count: bufferSize)
  if sysctl(&localIdentifier, UInt32(identifier.count), &buildBuffer, &bufferSize, nil, 0) != -1 {
    return String(cString: &buildBuffer)
  }
  return nil
}
