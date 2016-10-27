Pod::Spec.new do |spec|
    spec.name             = 'SwiftMessages'
    spec.version          = '3.0.3'
    spec.license          = { :type => 'MIT' }
    spec.homepage         = 'https://github.com/zhiquan911/SwiftMessages'
    spec.authors          = { 'Timothy Moose' => 'tim@swiftkick.it' }
    spec.summary          = 'A very flexible message bar for iOS written in Swift.'
    spec.source           = {:git => 'https://github.com/zhiquan911/SwiftMessages.git', :tag => spec.version}
    spec.platform         = :ios, '8.0'
    spec.ios.deployment_target = '8.0'
    spec.source_files     = 'SwiftMessages/**/*.swift'
    spec.resource_bundles = {'SwiftMessages' => ['SwiftMessages/Resources/**/*']}
    spec.framework        = 'UIKit'
    spec.requires_arc     = true
end


#提交命令：pod trunk push SwiftMessages.podspec