import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dart_spectre_api_method_channel.dart';

abstract class DartSpectreApiPlatform extends PlatformInterface {
  /// Constructs a DartSpectreApiPlatform.
  DartSpectreApiPlatform() : super(token: _token);

  static final Object _token = Object();

  static DartSpectreApiPlatform _instance = MethodChannelDartSpectreApi();

  /// The default instance of [DartSpectreApiPlatform] to use.
  ///
  /// Defaults to [MethodChannelDartSpectreApi].
  static DartSpectreApiPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DartSpectreApiPlatform] when
  /// they register themselves.
  static set instance(DartSpectreApiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
