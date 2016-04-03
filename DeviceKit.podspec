#===------------------------------------------------------------------------===#
#
# This source file is part of the DeviceKit project
#
# Copyright © 2015 - 2016 Dennis Weissmann and all project contributors
#
#===------------------------------------------------------------------------===#

Pod::Spec.new do |s|
  s.name         = 'DeviceKit'
  s.version      = '1.0.0'
  s.summary      = 'DeviceKit is a cross platform µ-framework that provides a value-type replacement and extension of UIDevice.'

  s.description             = <<-DESC
                                ``DeviceKit` is a cross platform value-type replacement and extension of [`UIDevice`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/). It detects both devices and different simulators.
                              DESC

  s.homepage                = 'https://github.com/dennisweissmann/DeviceKit'
  s.license                 = 'MIT'
  s.author                  = 'Dennis Weissmann'
  s.social_media_url        = 'https://twitter.com/dennis_weissman'

  s.requires_arc            = true
  s.ios.deployment_target   = '8.0'
  s.tvos.deployment_target  = '9.0'

  s.source                  = { :git => 'https://github.com/dennisweissmann/DeviceKit.git', :tag => s.version }
  s.source_files            = 'Source'

  s.requires_arc = true
end
