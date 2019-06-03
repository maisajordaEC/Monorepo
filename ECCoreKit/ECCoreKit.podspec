Pod::Spec.new do |spec|

# Configuration.
spec.name = "ECCoreKit"
spec.version = "1.0"
spec.summary = "Login SDK"
spec.homepage = "https://github.com/maisajordaEC/ECCoreKit"
spec.platform = :ios
spec.requires_arc = true
spec.ios.deployment_target = "9.0"
spec.author = {"EnglishCentral, Inc." => "support@englishcentral.com"}
spec.license = {
:type => 'Commercial',
:text => "Copyright (c) 2016 EnglishCentral, Inc. All rights reserved."
}
spec.source        = {
:git => "https://github.com/maisajordaEC/ECCoreKit.git",
:tag => "#{spec.version}.LOCAL"
}

# All Supported iOS Dependencies.
spec.ios.dependency 'MBProgressHUD', '1.0.0'
spec.ios.dependency 'NewRelicAgent', '6.5.0'
spec.ios.dependency 'SwiftyJSON', '~> 4.0'

end



