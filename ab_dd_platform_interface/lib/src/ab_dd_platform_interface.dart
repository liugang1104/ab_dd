import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'method_channel_ab_dd.dart';

abstract class AbDdPlatform extends PlatformInterface {
  AbDdPlatform() : super(token: _token);

  static final Object _token = Object();

  static AbDdPlatform _instance = MethodChannelAbDd();

  static AbDdPlatform get instance => _instance;

  static set instance(AbDdPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
