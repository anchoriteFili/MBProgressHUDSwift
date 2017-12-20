Pod::Spec.new do |s|
  s.name = 'MBProgressHUDSwift'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'MBProgressHUD used by swift'
  s.homepage = 'https://github.com/anchoriteFili/MBProgressHUDSwift'
  s.authors = { "anchoriteFili" => "feiliyaailiya1@ilcoud.com" }
  s.social_media_url = 'http://twitter.com/robertjpayne'
  s.source = { :git => "https://github.com/anchoriteFili/MBProgressHUDSwift.git", :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'MBProgressHUD/*.swift'
  s.requires_arc = true
end