
import 'dart:async';

import 'package:ab_dd_platform_interface/ab_dd_platform_interface.dart';

class AbDd {
  Future<String?> getPlatformVersion() => AbDdPlatform.instance.getPlatformVersion();
}
