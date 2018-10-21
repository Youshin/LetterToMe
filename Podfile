# Uncomment the next line to define a global platform for your project
 platform :ios, '11.0'

target 'LetterToMe' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
# For core functionality and the Remote MongoDB Service
    pod 'StitchSDK', '~> 4.0.5'
    pod 'FacebookLogin'
    pod 'Firebase'
    pod 'GoogleSignIn'
    # optional: for using the AWS service
#   pod 'StitchSDK/StitchAWSService', '~> 4.0.5'
    # optional: for using the Firebase Cloud Messaging service
#   pod 'StitchSDK/StitchFCMService', '~> 4.0.5'
    # optional: for using the HTTP service
    pod 'StitchSDK/StitchHTTPService', '~> 4.0.5'
    # optional: for using the twilio service
#    pod 'StitchSDK/StitchTwilioService', '~> 4.0.5'  

# Pods for LetterToMe
  target 'LetterToMeTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'LetterToMeUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
