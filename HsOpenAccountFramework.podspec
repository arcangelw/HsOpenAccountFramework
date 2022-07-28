Pod::Spec.new do |spec|
    spec.name                   = 'HsOpenAccountFramework' # 不包含支付功能
    spec.version                = '1.5.2' # 版本号和HsOpenAccountFramework的保持一致
    spec.homepage               = 'https://github.com/arcangelw/HsOpenAccountFramework.git'
    spec.source                 = { :git => 'https://github.com/arcangelw/HsOpenAccountFramework.git', :tag => spec.version }
    spec.summary                = 'HsOpenAccountFramework'
    spec.license                = { :type => 'MIT', :file => 'LICENSE' }
    spec.author                 = { 'wuzhe' => 'wuzhe@staff.hexun.com' }
    spec.platform               = :ios, '12.0'
    spec.ios.deployment_target  = '12.0'
    spec.module_name            = 'HsOpenAccountFramework' # 模块名和HsOpenAccountFramework保持一致
    spec.requires_arc           = true
    spec.static_framework       = true
    spec.swift_version          = '5.0'
    spec.vendored_frameworks    = 'Framework/HsOpenAccountFramework.framework', 'Framework/AnyChatCoreSDK.framework'
    spec.resources              = "HsOpenAccountRes.bundle", "sjkh-config-sdk.plist"
    spec.frameworks             = "VideoToolbox", "ImageIO", "CoreImage", "Foundation", "AVFoundation", "UIKit", "QuartzCore", "SystemConfiguration", "AudioToolbox", "CoreVideo", "CoreMedia", "CoreGraphics", "CoreAudio"
    spec.libraries              = 'z', 'c++', 'sqlite3.0'
    spec.pod_target_xcconfig    = { 
        'OTHER_LDFLAGS' => '-ObjC',
        'VALID_ARCHS' => 'x86_64 armv7 arm64'
    }
end