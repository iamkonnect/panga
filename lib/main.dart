import 'package:flutter/material.dart';
import 'screens/splash_screen.dart'; // Import SplashScreen
import 'screens/register_screen.dart'; // Import RegisterScreen
import 'screens/question_screen.dart'; // Import QuestionScreen
import 'screens/onboarding_screen.dart'; // Import OnboardingScreen
import 'screens/login_screen.dart'; // Import LoginScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Property Search',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Set home to SplashScreen
      routes: {
        '/onboarding': (context) => const OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/questions': (context) => const QuestionScreen(),
      },
    );
  }
}
