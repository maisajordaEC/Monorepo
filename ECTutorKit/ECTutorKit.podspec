Pod::Spec.new do |spec|

# Configuration.
spec.name = "ECTutorKit"
spec.version = "1.0"
spec.summary = "Tutor SDK"
spec.homepage = "https://github.com/maisajordaEC/Monorepo"
spec.platform = :ios
spec.requires_arc = true
spec.ios.deployment_target = "9.0"
spec.author = {"EnglishCentral, Inc." => "support@englishcentral.com"}
spec.license = {
:type => 'Commercial',
:text => "Copyright (c) 2016 EnglishCentral, Inc. All rights reserved."
}
spec.source        = {
:git => "https://github.com/maisajordaEC/Monorepo.git",
:tag => "#{spec.version}.LOCAL"
}
# Optional Frameworks.
#spec.weak_framework = "UIImage+PDF", "MBProgressHUD", "GoogleAnalytics"

# All Supported iOS Dependencies.
spec.ios.dependency 'MBProgressHUD', '1.0.0'
#spec.ios.dependency 'UIImage+PDF', '1.1.3'
spec.ios.dependency 'NewRelicAgent', '6.5.0'
spec.ios.dependency 'GoogleAnalytics'
end



