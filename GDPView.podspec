#
# Be sure to run `pod lib lint GDPView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GDPView'
  s.version          = '0.1.2'
  s.summary          = 'Its GDPView.'

  s.description      = <<-DESC
  Help you customize your view!
                       DESC

  s.homepage         = 'https://github.com/Quanhua-Guan/GDPView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yuyuan' => 'yuyuan@gaoding.com' }
  s.source           = { :git => 'https://github.com/Quanhua-Guan/GDPView.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'
  s.source_files = 'GDPView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GDPView' => ['GDPView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
