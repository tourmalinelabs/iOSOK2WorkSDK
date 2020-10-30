Pod::Spec.new do |s|
  s.name             = 'OK2Work'
  s.version          = '1.0.2'
  s.summary          = 'OK2Work framework'
  s.homepage         = 'https://www.tourmalinelabs.com'
  s.license          = { :type => 'Commercial', :text => "Copyright 2020 Tourmaline Labs, Inc." }
  s.authors          = { 'Cédric Malka' => 'cedric@tourmalinelabs.com',
                         'Fabrice Gagneux' => 'fabrice@tourmalinelabs.com' }
  s.source           = { :http => 'https://github.com/tourmalinelabs/iOSOK2WorkSDK/raw/master/OK2Work/1.0.2/OK2Work.zip' }
  s.ios.vendored_frameworks = 'OK2Work.framework'
  s.ios.deployment_target = '11.0'
  s.dependency 'Alamofire', '~> 5.2.0'
  s.dependency 'SQLite.swift/SQLCipher', '~> 0.12.2'
  s.dependency 'Logging', '~> 1.2'

  s.prepare_command = `file=Pods/SQLite.swift/Sources/SQLiteObjc/include/SQLiteObjc.h;[ -f ${file} ] && sed -i '' -e 's/@import SQLite3;/@import SQLCipher.sqlite3;/g' ${file}`
end
