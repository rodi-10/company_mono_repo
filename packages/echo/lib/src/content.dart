import 'package:call_function/src/data.dart';
import 'package:flutter/foundation.dart';

class DebugUtil {
  static void echo(String message,{String? echoType}) {
    String type = echoType ?? EchoType.info;
    debugPrint('@@echo: $message\nType: $type');
  }
}