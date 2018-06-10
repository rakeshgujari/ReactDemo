# Uncomment the next line to define a global platform for your project
 platform :ios, '9.0'

target 'ReactDemo' do

  use_frameworks!

   pod 'React', :path => '../js/node_modules/react-native', :subspecs => [
    'Core',
    'CxxBridge', # Include this for RN >= 0.47
    'DevSupport', # Include this to enable In-App Devmenu if RN >= 0.43
    'RCTText',
    'RCTNetwork',
    'RCTWebSocket', # Needed for debugging
    'RCTAnimation', # Needed for FlatList and animations running on native UI thread
    # Add any other subspecs you want to use in your project
  ]
  # Explicitly include Yoga if you are using RN >= 0.42.0
  pod 'yoga', :path => '../js/node_modules/react-native/ReactCommon/yoga'

# Third party deps podspec link
  pod 'DoubleConversion', :podspec => '../js/node_modules/react-native/third-party-podspecs/DoubleConversion.podspec'
  pod 'GLog', :podspec => '../js/node_modules/react-native/third-party-podspecs/GLog.podspec'
  pod 'Folly', :podspec => '../js/node_modules/react-native/third-party-podspecs/Folly.podspec'


end
