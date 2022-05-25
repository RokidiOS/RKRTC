
Pod::Spec.new do |s|
  s.name             = 'RKRTC'
  s.version          = '1.2.1'
  s.summary          = 'iOS Rokid RTC SDK .'
  s.description      = <<-DESC
  Rokid iOS rtc SDK .
                       DESC

  s.homepage         = 'https://github.com/RokidiOS/RKRTCSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'amos' => 'xiaodong.chen@rokid.com' }
  s.source = { :git => "https://github.com/RokidiOS/RKRTC.git", :branch => "1.2.1_swift5.5.2" }

  s.ios.deployment_target = '10.0'
  
  s.swift_version = '5.0'
  
  s.ios.vendored_frameworks = "Frameworks/*.framework"
  
  s.xcconfig = {
    'ENABLE_BITCODE' => 'NO'
  }
  
  s.dependency 'RKILogger'
  
  s.dependency 'RKIUtils'
  
  s.dependency 'RKIHandyJSON'

  s.dependency 'Moya'

  s.dependency 'Starscream'
  end
