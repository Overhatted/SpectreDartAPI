
import 'dart_spectre_api_platform_interface.dart';

class DartSpectreApi {
  Future<String?> getPlatformVersion() {
    return DartSpectreApiPlatform.instance.getPlatformVersion();
  }
}
