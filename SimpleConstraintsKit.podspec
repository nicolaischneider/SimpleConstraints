Pod::Spec.new do |s|
    s.name             = 'SimpleConstraintsKit'
    s.version          = '0.2.2'
    s.summary          = 'A simple library for easy auto layout constraints in iOS and tvOS'
    s.description      = <<-DESC
SimpleConstraints is a Swift library designed to simplify the process of creating and managing constraints in UIKit. It provides a set of utilities that make it easier to align and position UI elements in your iOS applications.
                         DESC
    s.homepage         = 'https://github.com/nicolaischneider/SimpleConstraints'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Nicolai Schneider' => 'nicolaischneiderdev@gmail.com' }
    s.source           = { :git => 'https://github.com/nicolaischneider/SimpleConstraints.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '12.0'
    s.tvos.deployment_target = '12.0'
    s.swift_version = '5.9'
    
    s.source_files = 'Sources/SimpleConstraints/**/*'
  end