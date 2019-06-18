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

    # Local pods
    import_corekit
  end

  target 'EnglishCentralApp' do
    project 'EnglishCentralApp/EnglishCentralApp.xcodeproj'

    puts "Installing EnglishCentralApp"
    # Pods for EnglishCentralApp
 
    # Local pods
    import_corekit
    #import_tutorkit
  end

  target 'MyEnglish' do
    puts "Installing MyEnglish (VNPT)"
    # Pods for MyEnglish
 
    # Local pods
    import_corekit

  end

  target 'EnglishCentralAppTests' do
    inherit! :search_paths
    # Pods for testing
  end




