import 'dart:async';

import 'package:flutter/services.dart';

class Respect24Hour {
  static const MethodChannel _channel =
      const MethodChannel('respect_24_hour');

  ///returns `true` the device is using 24-hour time format
  static Future<bool> get get24HourFormat async {
    final bool is24HourFormat = await _channel.invokeMethod('get24HourFormat');
    return is24HourFormat;
  }
}
