source 'git@github.com:CocoaPods/Specs.git'

platform :ios, '8.0'
inhibit_all_warnings!

workspace 'Multilingual'

target :Multilingual do
# Depending on how your project is organized, your node_modules directory may be
# somewhere else; tell CocoaPods where you've installed react-native from npm
pod 'React', :path => './node_modules/react-native', :subspecs => [
  'Core',
  'RCTImage',
  'RCTNetwork',
  'RCTText',
  'RCTWebSocket'
]
end
