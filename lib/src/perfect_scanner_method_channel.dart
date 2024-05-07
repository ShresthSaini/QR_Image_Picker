import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:qr_image_picker/src/const.dart';

class MethodChannelPerfectScanner {
  @visibleForTesting
  final methodChannel = const MethodChannel('perfect_scanner');

  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  Future startScan() async {
    await methodChannel.invokeMethod(Const.startScan);
  }
}
