import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // Import the HomePage file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primaryColor: Colors.pink), // Ensure HomePage is correctly referenced
    );
  }
}
