import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dart_spectre_api_platform_interface.dart';

/// An implementation of [DartSpectreApiPlatform] that uses method channels.
class MethodChannelDartSpectreApi extends DartSpectreApiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dart_spectre_api');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
