
import 'sample_plugin_secure_storage_platform_interface.dart';

class SamplePluginSecureStorage {
  Future<String?> getPlatformVersion() {
    return SamplePluginSecureStoragePlatform.instance.getPlatformVersion();
  }
}
