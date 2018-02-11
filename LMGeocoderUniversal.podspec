#
# Be sure to run `pod lib lint LMGeocoderUniversal.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LMGeocoderUniversal'
  s.version          = '1.2.1'
  s.summary          = 'Second Life of LMGeocoder by LMinh.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      =  <<-DESC
Simple wrapper for geocoding and reverse geocoding, using both Google Geocoding API and Apple iOS Geocoding Framework.
                       DESC

  s.homepage         = 'https://github.com/truebucha/LMGeocoderUniversal'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'truebucha' => 'truebucha@gmail.com', 'LMinh' => 'lminhtm@gmail.com' }
  s.source           = { :git => 'https://github.com/truebucha/LMGeocoderUniversal.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/truebucha'

  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.10'

  s.source_files = 'LMGeocoderUniversal/Classes/**/*'
  s.frameworks = 'Foundation','CoreLocation'
  s.requires_arc = true
end
