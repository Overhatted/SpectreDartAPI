import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dart_spectre_api/dart_spectre_api_method_channel.dart';

void main() {
  MethodChannelDartSpectreApi platform = MethodChannelDartSpectreApi();
  const MethodChannel channel = MethodChannel('dart_spectre_api');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
