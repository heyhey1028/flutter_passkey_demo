import 'dart:io';
import 'package:flutter/foundation.dart';

class PlatformUtil {
  static String getPlatformString() {
    if (kIsWeb) {
      return 'web';
    } else if (Platform.isIOS) {
      return 'ios';
    } else if (Platform.isAndroid) {
      return 'android';
    } else {
      throw UnsupportedError('Unsupported platform for passkey');
    }
  }
}
