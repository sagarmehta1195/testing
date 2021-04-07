import 'dart:async';

import 'package:flutter/services.dart';

class Fluttersttings {
  static const MethodChannel _channel = const MethodChannel('fluttersttings');

  // static Future<String> get platformVersion async {
  //   final String version = await _channel.invokeMethod('getPlatformVersion');
  //   return version;
  // }
  //
  static Future<bool> openPage(String pageName) async {
    final bool result = await _channel.invokeMethod('openPage', pageName);
    return result;
  }
}
