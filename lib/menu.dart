import 'package:anynotedotai/Pages/about.dart';
import 'package:anynotedotai/Pages/home.dart';
import 'package:anynotedotai/Pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    // final chatacterController = Get.find<ChatacterController>();
    return HiddenDrawerMenu(
      screens: [
        ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Home',
            baseStyle: const TextStyle(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            colorLineSelected: Colors.grey,
            selectedStyle: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const Home(),
        ),
        ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'About',
            baseStyle: const TextStyle(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            colorLineSelected: Colors.grey,
            selectedStyle: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const About(),
        ),
        ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Settings',
            baseStyle: const TextStyle(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
            colorLineSelected: Colors.grey,
            selectedStyle: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const Settings(),
        ),
      ],
      backgroundColorMenu: Colors.black,
      backgroundColorAppBar: Colors.black,
      styleAutoTittleName: const TextStyle(
        color: Colors.white,
      ),
      leadingAppBar: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
    );
  }
}
