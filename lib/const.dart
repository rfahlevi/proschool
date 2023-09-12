import 'package:flutter/services.dart';

class ProschoolTWA {
  static channel(String url) {
    return const MethodChannel('method_channel/twa').invokeMethod('openTWA', {'url': url});
  }
}
