import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sample_plugin_secure_storage_method_channel.dart';

abstract class SamplePluginSecureStoragePlatform extends PlatformInterface {
  /// Constructs a SamplePluginSecureStoragePlatform.
  SamplePluginSecureStoragePlatform() : super(token: _token);

  static final Object _token = Object();

  static SamplePluginSecureStoragePlatform _instance = MethodChannelSamplePluginSecureStorage();

  /// The default instance of [SamplePluginSecureStoragePlatform] to use.
  ///
  /// Defaults to [MethodChannelSamplePluginSecureStorage].
  static SamplePluginSecureStoragePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SamplePluginSecureStoragePlatform] when
  /// they register themselves.
  static set instance(SamplePluginSecureStoragePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
