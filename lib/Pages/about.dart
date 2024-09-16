import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                    'This is a simple note app built using Flutter and GetX. It allows you to take, edit, and delete notes. The app is easy to use and great for students, professionals, and anyone who needs to keep track of their thoughts and ideas.'),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('AnyNote.AI is developed by Mohamed Hisham Abdelzaher'),
              ),
              Wrap(
                children: [
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                      'https://www.facebook.com/Mohamed.Hisham.Abdelzaher',
                    ),
                    builder: (context, followLink) => Card(
                      // color: Colors.black,
                      child: ElevatedButton(
                        onPressed: followLink,
                        child: const Text(
                          'Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                      'https://www.Kaggle.com/MH0386',
                    ),
                    builder: (context, followLink) => Card(
                      // color: Colors.grey,
                      child: ElevatedButton(
                        onPressed: followLink,
                        child: const Text(
                          'Kaggle',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                      'https://www.GitHub.com/MH0386',
                    ),
                    builder: (context, followLink) => Card(
                      // color: Colors.grey,
                      child: ElevatedButton(
                        onPressed: followLink,
                        child: const Text(
                          'GitHub',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                      'https://www.LinkedIn.com/in/MH0386',
                    ),
                    builder: (context, followLink) => Card(
                      // color: Colors.grey,
                      child: ElevatedButton(
                        onPressed: followLink,
                        child: const Text(
                          'LinkedIn',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                      'https://www.x.com/MH0386',
                    ),
                    builder: (context, followLink) => Card(
                      // color: Colors.grey,
                      child: ElevatedButton(
                        onPressed: followLink,
                        child: const Text(
                          'X',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                      'https://www.Coursera.org/user/985b071f3a43961f7fc46f8061c7377e',
                    ),
                    builder: (context, followLink) => Card(
                      // color: Colors.grey,
                      child: ElevatedButton(
                        onPressed: followLink,
                        child: const Text(
                          'Coursera',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                      'https://www.datacamp.com/profile/MH0386',
                    ),
                    builder: (context, followLink) => Card(
                      // color: Colors.grey,
                      child: ElevatedButton(
                        onPressed: followLink,
                        child: const Text(
                          'DataCamp',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                      'https://www.huggingface.co/MH0386',
                    ),
                    builder: (context, followLink) => Card(
                      // color: Colors.grey,
                      child: ElevatedButton(
                        onPressed: followLink,
                        child: const Text(
                          'HuggingFace',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
