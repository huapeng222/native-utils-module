#
# Be sure to run `pod lib lint ZLNativeUtilsModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZLNativeUtilsModule'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ZLNativeUtilsModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/huapeng222/ZLNativeUtilsModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'huapeng222' => 'huazhaopeng@zhi-lian.com.cn' }
  s.source           = { :git => 'https://github.com/huapeng222/ZLNativeUtilsModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ios/ZLNativeUtilsModule/Classes/**/*.{h,m}'
  s.requires_arc = true
  s.dependency 'React'
  # s.resource_bundles = {
  #   'ZLNativeUtilsModule' => ['ZLNativeUtilsModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

#'require 'json'
#version = JSON.parse(File.read('package.json'))["version"]
#
#Pod::Spec.new do |s|
#
#  s.name           = "ZLNativeUtilsModule"
#  s.version        = version
#  s.summary        = "Customizable Icons for React Native with support for NavBar/TabBar, image source and full styling."
#  s.homepage       = "https://github.com/oblador/react-native-vector-icons"
#  s.license        = "MIT"
#  s.author         = { "Joel Arvidsson" => "joel@oblador.se" }
#  s.platforms      = { :ios => "9.0", :tvos => "9.0" }
#  s.source         = { :git => "https://github.com/oblador/react-native-vector-icons.git", :tag => "v#{s.version}" }
#  s.source_files   = 'RNVectorIconsManager/**/*.{h,m}'
#  s.resources      = "Fonts/*.ttf"
#  s.preserve_paths = "**/*.js"
#  s.dependency 'React'
#
#end
