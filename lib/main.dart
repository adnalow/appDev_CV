import 'package:activity_2_cv/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV App', // Title of the app
      theme: ThemeData(
        primarySwatch: Colors.blue, // App theme color
      ),
      home: const MyHomePage(), // Create a separate class for the home screen
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My CV',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer( // Adding a drawer to create the burger menu
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CV Sections',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Education'),
            ),
            Divider(), // Horizontal line separator
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Skills'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Projects'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Experience'),
            ),
          ],
        ),
      ),
      body: const Center(
        child:HomeScreen(),
      ),
    );
  }
}
