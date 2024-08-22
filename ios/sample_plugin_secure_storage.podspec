#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint sample_plugin_secure_storage.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'sample_plugin_secure_storage'
  s.version          = '0.0.1'
  s.summary          = 'Sample Plugin Secure Storage'
  s.description      = <<-DESC
Sample Plugin Secure Storage
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
