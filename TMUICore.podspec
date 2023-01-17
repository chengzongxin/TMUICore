#
# Be sure to run `pod lib lint TMUICore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TMUICore'
  s.version          = '2.0.8'
  s.summary          = 'A short description of TMUICore.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/chengzongxin/TMUICore.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Joe.cheng' => 'joe.cheng@corp.to8to.com' }
  s.source           = { :git => 'https://github.com/chengzongxin/TMUICore.git', :tag => "v"+"#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  if ENV['IS_SOURCE']
     puts '-------------------------------------------------------------------'
     puts 'Notice:TMUICore is source now'
     puts '-------------------------------------------------------------------'
     s.public_header_files = 'TMUICore/Classes/*.h'
     s.source_files = 'TMUICore/Classes/**/*'
     s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'
   else
     puts '-------------------------------------------------------------------'
     puts 'Notice:TMUICore is binary now'
     puts '-------------------------------------------------------------------'
     s.source_files = 'Pod/Products/include/**'
     s.public_header_files = 'Pod/Products/include/*.h'
     s.ios.vendored_libraries = 'Pod/Products/lib/libTMUICoreBinary.a'
   end
end
