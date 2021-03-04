#
# Be sure to run `pod lib lint SocketKitIO.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# SocketIOKit Version - 0.1.0.00

Pod::Spec.new do |s|
  s.name             = 'SocketIOKit'
  s.version          = '0.1.0.00'
  s.summary          = 'A short description of SocketKitIO.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/arzrasel/SocketKitIO'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Md. Rashed - Uz - Zaman' => 'rashedgit@gmail.com' }
  s.source           = { :git => 'https://github.com/arzrasel/SocketKitIO.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

#  s.ios.deployment_target = '9.0'
#  s.source_files = 'SocketKitIO/Classes/**/*'

  s.ios.deployment_target = '11.0'
  s.source_files = 'Source/**/*.swift'
  
  # s.resource_bundles = {
  #   'SocketKitIO' => ['SocketKitIO/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Socket.IO-Client-Swift', '~> 15.2.0'
end
