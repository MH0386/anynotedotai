import 'package:anynotedotai/Pages/about.dart';
import 'package:anynotedotai/Pages/settings.dart';
import 'package:anynotedotai/controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final chatacterController = Get.find<ChatacterController>();
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 100,
          title: const Text('Home'),
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          }),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Center(
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('About'),
                onTap: () => Get.to(() => const About()),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () => Get.to(() => const Settings()),
              ),
            ],
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
                    'Welcome to AnyNote.AI',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: screenWidth * 0.08,
                    ),
                  ),
                  Text(
                    'This is a note app\nClick the button below to add new notes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.03,
                    ),
                  ),
                  const SizedBox(height: 40),
                  FloatingActionButton.extended(
                    backgroundColor: Colors.black,
                    onPressed: () {
                      if (kDebugMode) {
                        print('New Chat Button Pressed');
                      }
                      Get.bottomSheet(
                        const Wrap(
                          children: [
                            Card(
                              color: Colors.black,
                              child: ListTile(
                                leading: Icon(
                                  Icons.note_add_outlined,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'New Note',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                subtitle: Text(
                                  'create a new note',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        barrierColor: const Color.fromARGB(155, 0, 0, 0),
                        elevation: 10,
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
        // bottomNavigationBar: BottomAppBar(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       IconButton(
        //         icon: const Icon(Icons.home),
        //         onPressed: () {
        //           if (kDebugMode) {
        //             print('Home Button Pressed');
        //           }
        //         },
        //       ),
        //       IconButton(
        //         icon: const Icon(Icons.chat),
        //         onPressed: () {
        //           if (kDebugMode) {
        //             print('Chat Button Pressed');
        //           }
        //           // Get.to(() => () => const Chat());
        //         },
        //       ),
        //       IconButton(
        //         icon: const Icon(Icons.note),
        //         onPressed: () {
        //           if (kDebugMode) {
        //             print('Note Button Pressed');
        //           }
        //           // Get.to(() => () => const Note());
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        // floatingActionButton: const FloatingActionButton(onPressed: null, child: Icon(Icons.add),),
      ),
    );
  }
}
