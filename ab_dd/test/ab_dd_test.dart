import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ab_dd/ab_dd.dart';

void main() {
  const MethodChannel channel = MethodChannel('ab_dd');

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
    expect(
        await AbDd().getPlatformVersion(), '42');
  });
}
