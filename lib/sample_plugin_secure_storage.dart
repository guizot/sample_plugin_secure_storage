import 'package:flutter/material.dart';
import 'sample_plugin_secure_storage_platform_interface.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SamplePluginSecureStorage {
  Future<String?> getPlatformVersion() async {
    const storage = FlutterSecureStorage();
    await storage.write(key: "encrypted_key", value: "1234567890");
    String? value = await storage.read(key: "encrypted_key");
    debugPrint("encrypted_key: $value");
    return SamplePluginSecureStoragePlatform.instance.getPlatformVersion();
  }
}
