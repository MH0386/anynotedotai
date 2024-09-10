import 'package:chatacter/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final chatacterController = Get.find<ChatacterController>();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
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
                          print('Changed to Dark Theme');
                        } else {
                          Get.changeTheme(ThemeData.light());
                          print('Changed to Light Theme');
                        }
                        print('IsAppInDarkMode Switched to ${chatacterController.isAppInDarkMode.value}, Get.isDarkMode: ${Get.isDarkMode}');
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
                        print('IsText Switched to ${chatacterController.isText.value}');
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
                        print('IsVoice Switched to ${chatacterController.isVoice.value}');
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
                        print('IsVideo Switched to ${chatacterController.isVideo.value}');
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