import 'package:anynotedotai/controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final chatacterController = Get.find<ChatacterController>();
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: ListView(
            children: [
              Card(
                elevation: 0,
                child: ListTile(
                  leading: const Icon(Icons.brightness_6),
                  title: const Text('Toggle Theme'),
                  trailing: Obx(
                    () => Switch(
                      value: chatacterController.isAppInDarkMode.value,
                      onChanged: (bool value) {
                        chatacterController.isAppInDarkMode.value = value;
                        if (chatacterController.isAppInDarkMode.value) {
                          Get.changeTheme(ThemeData.dark());
                          if (kDebugMode) {
                            print('Changed to Dark Theme');
                          }
                        } else {
                          Get.changeTheme(ThemeData.light());
                          if (kDebugMode) {
                            print('Changed to Light Theme');
                          }
                        }
                        if (kDebugMode) {
                          print('IsAppInDarkMode Switched to ${chatacterController.isAppInDarkMode.value}, Get.isDarkMode: ${Get.isDarkMode}');
                        }
                      },
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: const Icon(Icons.textsms),
                  title: const Text('Interact in Text'),
                  trailing: Obx(
                    () => Switch(
                      value: chatacterController.isText.value,
                      onChanged: (bool value) {
                        chatacterController.isText.value = value;
                        if (kDebugMode) {
                          print('IsText Switched to ${chatacterController.isText.value}');
                        }
                      },
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: const Icon(Icons.mic),
                  title: const Text('Interact in Voice'),
                  trailing: Obx(
                    () => Switch(
                      value: chatacterController.isVoice.value,
                      onChanged: (bool value) {
                        chatacterController.isVoice.value = value;
                        if (kDebugMode) {
                          print('IsVoice Switched to ${chatacterController.isVoice.value}');
                        }
                      },
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: const Icon(Icons.videocam),
                  title: const Text('Interact in Video'),
                  trailing: Obx(
                    () => Switch(
                      value: chatacterController.isVideo.value,
                      onChanged: (bool value) {
                        chatacterController.isVideo.value = value;
                        if (kDebugMode) {
                          print('IsVideo Switched to ${chatacterController.isVideo.value}');
                        }
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}