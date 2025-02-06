import 'package:flutter/material.dart';
import 'package:panga/screens/login_screen.dart'; // Import the LoginScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panga',
      home: const LoginScreen(),
    );
  }
}
