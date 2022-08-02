import 'package:flutter_test/flutter_test.dart';
import 'package:dart_spectre_api/dart_spectre_api.dart';
import 'package:dart_spectre_api/dart_spectre_api_platform_interface.dart';
import 'package:dart_spectre_api/dart_spectre_api_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDartSpectreApiPlatform 
    with MockPlatformInterfaceMixin
    implements DartSpectreApiPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DartSpectreApiPlatform initialPlatform = DartSpectreApiPlatform.instance;

  test('$MethodChannelDartSpectreApi is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDartSpectreApi>());
  });

  test('getPlatformVersion', () async {
    DartSpectreApi dartSpectreApiPlugin = DartSpectreApi();
    MockDartSpectreApiPlatform fakePlatform = MockDartSpectreApiPlatform();
    DartSpectreApiPlatform.instance = fakePlatform;
  
    expect(await dartSpectreApiPlugin.getPlatformVersion(), '42');
  });
}
