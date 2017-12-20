Pod::Spec.new do |s|
  s.name = 'MBProgressHUDSwift'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'MBProgressHUD used by swift'
  s.homepage = 'https://github.com/anchoriteFili/MBProgressHUDSwift'
  s.authors = { "anchoriteFili" => "feiliyaailiya1@ilcoud.com" }
  s.source = { :git => "https://github.com/anchoriteFili/MBProgressHUDSwift.git", :tag => '0.0.1' }

  s.ios.deployment_target = '8.0'

  s.source_files = 'MBProgressHUD/**/*.{h,m}'
  s.requires_arc = true
end