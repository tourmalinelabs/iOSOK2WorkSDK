Pod::Spec.new do |s|
  s.name             = 'OK2Work'
  s.version          = '0.1.3'
  s.summary          = 'OK2Work framework'
  s.homepage         = 'https://www.tourmalinelabs.com'
  s.license          = { :type => 'Commercial', :text => "Copyright 2020 Tourmaline Labs, Inc." }
  s.authors          = { 'Cédric Malka' => 'cedric@tourmalinelabs.com',
                         'Fabrice Gagneux' => 'fabrice@tourmalinelabs.com' }
  s.source           = { :http => 'https://github.com/tourmalinelabs/iOSOK2WorkSDK/raw/master/OK2Work/0.1.3/OK2Work.zip' }
  s.ios.vendored_frameworks = 'OK2Work.framework'
  s.ios.deployment_target = '11.0'
  s.dependency 'Alamofire', '~> 5.1'
  s.dependency 'SQLCipher', '= 4.2.0'
  s.dependency 'SQLite.swift/SQLCipher', '~> 0.12.2'
  s.dependency 'Logging', '~> 1.2'
end
