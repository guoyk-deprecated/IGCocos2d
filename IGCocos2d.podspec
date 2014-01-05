Pod::Spec.new do |s|
  s.name         = "IGCocos2d"
  s.version      = "0.1.0"
  s.summary      = "Modified cocos2d library"
  s.description  = "Modified cocos2d library, integrated with ccb"
  s.homepage     = "https://bitbucket.org/ireulguo/igcocos2d"
  s.license      = 'MIT'
  s.author       = { "MAGI Ireul" => "magi.ireul@gmail.com" }
  s.source       = { :git => "https://ireulguo@bitbucket.org/ireulguo/igcocos2d.git", :tag => s.version.to_s }

  s.ios.deployment_target = '5.1'
  s.osx.deployment_target = '10.7'
  s.requires_arc = false

  s.source_files = 'Classes/Core/**/*.{h,m,c}'
  s.header_mappings_dir = 'Classes/Core/'

  s.public_header_files = 'Classes/**/*.h'
  s.frameworks = ["OpenGLES", "QuartzCore", "GameKit", "CoreText"]
  s.library    =  'z'

  s.subspec 'CocosDenshion' do |p|
    p.source_files =  'Classes/CocosDenshion/*.{h,m}'
    p.frameworks   =  ["OpenAL", "AVFoundation", "AudioToolbox"]
  end

  s.subspec 'CCBReader' do |p|
    p.source_files = 'Classes/CCBReader/**/*.{h,m,fsh}'
    p.dependency 'SSZipArchive'
  end

end
