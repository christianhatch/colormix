#
# Be sure to run `pod lib lint ColorMix.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ColorMix'
  s.version          = '0.1.0'
  s.summary          = 'A simple color picker with HSB and RGB options.'

  s.description      = <<-DESC
    ColorMix is a simple view with RGB and HSB sliders that allows you to select a color.
    DESC

  s.homepage         = 'https://github.com/christianhatch/colormix'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Christian Hatch' => 'christianhatch@gmail.com' }
  s.source           = { :git => 'https://github.com/<GITHUB_USERNAME>/ColorMix.git', :tag => s.version.to_s }
   s.social_media_url = 'https://twitter.com/commodoreftp'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ColorMix/Classes/**/*'
  
  s.resources = ['ColorMix/Classes/ColorPickerView.xib', 'ColorMix/Classes/LabelledSlider.xib']

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
