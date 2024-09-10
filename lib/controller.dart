import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ChatacterController extends GetxController {
  final response = ''.obs;
  final character = ''.obs;
  final responseLength = 1.obs;
  final isText = true.obs;
  final isVoice = false.obs;
  final isVideo = false.obs;
  final isAppInDarkMode = false.obs;
  getTextResponse(String query) {
    if (kDebugMode) {
      print('Query: $query');
    }
      }
}