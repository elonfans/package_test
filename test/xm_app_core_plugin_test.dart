import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xm_app_core_plugin/xm_app_core_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('xm_app_core_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await XmAppCorePlugin.platformVersion, '42');
  });
}
