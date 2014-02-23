Pod::Spec.new do |s|
  s.name             = "ExtraViewControllers"
  s.version          = "0.1.0"
  s.summary          = "Hello everofaijefpoijw aepo kweg"

  s.homepage         = "http://Hello/lallal"
  s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Marek Mościchowski" => "moscich@gmail.com" }
  s.source           = { :git => "https://github.com/moscich/ExtraViewController.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/NAME'

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'Classes'

  s.dependency 'LoremPixel'
  s.dependency 'ProductCore'

end
