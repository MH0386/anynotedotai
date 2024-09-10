import 'package:flutter/material.dart';
import 'package:get/get.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('About Chatacter'),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/logo.png'),
              const SizedBox(height: 10),
              const Text('This is a chat bot app. You can chat with different characters. More characters will be added soon.', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text('Chatacter is developed by:', style: TextStyle(fontWeight: FontWeight.bold)),
              const Text('\t-\tMohamed Hisham Abdelzaher', style: TextStyle(fontWeight: FontWeight.bold)),
              const Text('\t-\tYousef Mohamed Abdel-Hay', style: TextStyle(fontWeight: FontWeight.bold)),
              const Text('\t-\tAbdelrahman Mostafa Mohamed', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}