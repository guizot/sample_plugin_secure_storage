import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sample_plugin_secure_storage_platform_interface.dart';

/// An implementation of [SamplePluginSecureStoragePlatform] that uses method channels.
class MethodChannelSamplePluginSecureStorage extends SamplePluginSecureStoragePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sample_plugin_secure_storage');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
