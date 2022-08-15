import 'package:ab_dd_platform_interface/ab_dd_platform_interface.dart';

class AbDdAndroid extends MethodChannelAbDd {
  static void registerWith() {
    AbDdPlatform.instance = AbDdAndroid();
  }
}
