import 'package:flutter/services.dart';

import 'ab_dd_platform_interface.dart';

class MethodChannelAbDd extends AbDdPlatform {
  static const MethodChannel _channel =
  MethodChannel('io.ambergroup.plugins/ab_dd');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await _channel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
