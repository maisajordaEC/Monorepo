  platform :ios, '9.0'
  use_frameworks!

  workspace 'ECWorkspace'
  project 'ECCoreKit/ECCoreKit.xcodeproj'
  project 'ECTutorKit/ECTutorKit.xcodeproj'
  project 'EnglishCentralApp/EnglishCentralApp.xcodeproj'

  def import_corekit
    pod 'ECCoreKit', :path => "ECCoreKit"
  end

  def import_tutorkit
    pod 'ECTutorKit', :path => "ECTutorKit"
  end

  target 'ECCoreKit' do
     project 'ECCoreKit/ECCoreKit.xcodeproj'

     # Pods for CoreKit
     import_corekit
  end

  target 'ECTutorKit' do
    project 'ECTutorKit/ECTutorKit.xcodeproj'

    # Pods for TutorKit
    import_tutorkit

    # Private pods
    import_corekit
  end

  target 'EnglishCentralApp' do
    project 'EnglishCentralApp/EnglishCentralApp.xcodeproj'

    # Pods for EnglishCentralApp
 
    # Private pods
    import_corekit
    import_tutorkit
  end

  target 'EnglishCentralAppTests' do
    inherit! :search_paths
    # Pods for testing
  end




