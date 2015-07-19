Pod::Spec.new do |s|
  s.name         = "UIColorWebColorExtention"
  s.version      = "1.0"
  s.summary      = "Convenience method for creating color using '#rrggbb' or '#rgb'."
  s.homepage     = "https://github.com/notoroid/UIColorWebColorExtention"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "notoroid" => "noto@irimasu.com" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/notoroid/UIColorWebColorExtention.git', :tag => "#{s.version}" }
  s.source_files = '*.swift'
  s.frameworks   = ['UIKit']
  s.requires_arc = true
end