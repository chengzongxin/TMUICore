Pod::Spec.new do |s|
  s.name = "TMUICore"
  s.version = "2.0.8"
  s.summary = "A short description of TMUICore."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"Joe.cheng"=>"joe.cheng@corp.to8to.com"}
  s.homepage = "https://github.com/chengzongxin/TMUICore.git"
  s.description = "TODO: Add long description of the pod here."
  s.frameworks = ["Foundation", "UIKit", "CoreGraphics"]
  s.source = { :path => '.' }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'ios/TMUICore.embeddedframework/TMUICore.framework'
end
