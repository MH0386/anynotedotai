import 'package:chatacter/Pages/about.dart';
import 'package:chatacter/Pages/chat.dart';
import 'package:chatacter/Pages/settings.dart';
import 'package:chatacter/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final chatacterController = Get.find<ChatacterController>();
    return MaterialApp(
      // theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          elevation: 100,
          title: const Text('Home'),
          leading: IconButton(
            onPressed: () {
              print('Menu Button Pressed');
              Get.bottomSheet(
                Wrap(
                  children: [
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.info_outline),
                        title: const Text('About Chatacter'),
                        onTap: () {
                          print('About pressed');
                          Get.to(() => const About());
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.settings),
                        title: const Text('Settings'),
                        onTap: () {
                          print('Settings pressed');
                          Get.to(() => const Settings());
                        },
                      ),
                    )
                  ],
                ),
              );
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double screenWidth = constraints.maxWidth;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Chatacter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: screenWidth * 0.08,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'This is a chat bot app\nClick the button below to start chatting',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.03,
                    ),
                  ),
                  const SizedBox(height: 40),
                  FloatingActionButton.extended(
                    onPressed: () {
                      print('New Chat Button Pressed');
                      Get.bottomSheet(
                        Wrap(
                          children: [
                            Card(
                              child: ListTile(
                                leading: const Icon(Icons.person),
                                title: const Text('Napoleon Bonaparte'),
                                subtitle: const Text('You are now can chat with Napoleon Bonaparte'),
                                onTap: () {
                                  print('Chat 1 pressed');
                                  chatacterController.character.value = 'Napoleon Bonaparte';
                                  chatacterController.response.value = 'Hi, My name is Napoleon Bonaparte. How can I help you?';
                                  Get.to(() => const Chat());
                                },
                              ),
                            ),
                            const Card(
                              child: ListTile(
                                leading: Icon(Icons.announcement),
                                title: Text('Coming Soon...'),
                                subtitle: Text('More chat options will be available soon'),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    label: const Text('New Chat'),
                    icon: const Icon(Icons.add),
                    elevation: 10,
                    hoverColor: Colors.black45,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}