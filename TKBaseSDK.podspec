#
# Be sure to run `pod lib lint TKBaseSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TKBaseSDK'
  s.version          = '4.18.3.2'
  s.summary          = 'A short description of TKBaseSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/shenmengyue-lab/TKBaseSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '新拓云（北京）科技有限公司' => 'zhangjiangtao@talk-cloud.com' }
  s.source           = { :git => 'https://github.com/shenmengyue-lab/TKBaseSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  # 壳 target：保证 Pods 工程有可编译的源文件；实际能力在 vendored_frameworks 中
#  s.source_files = 'TKBaseSDK/Classes/**/*.{h,m}'

  s.ios.vendored_frameworks = 'TKBaseSDK/Frameworks/*.framework'
  # 资源已内嵌在各 .framework 的 .bundle 中，无需单独声明 s.resources
  # 与 use_frameworks! 配合使用；勿开启 static_framework，否则与动态 vendored framework 链接易冲突
  s.static_framework = true

  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64 arm64e' }

  # 三方库
  s.dependency 'lottie-ios', '2.5.3'
  s.dependency 'Masonry'
  s.dependency 'SDWebImage'
  
  # s.resource_bundles = {
  #   'TKBaseSDK' => ['TKBaseSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
