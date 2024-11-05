import 'package:flutter/material.dart';
import 'package:sierra/screens/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project: Sierra',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromRGBO(26, 37, 48, 1),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            bodyMedium: TextStyle(
              fontSize: 20,
            ),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            primary: const Color.fromRGBO(91, 158, 225, 1),
            secondary: const Color.fromRGBO(112, 123, 129, 1),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16),
            backgroundColor: const Color.fromRGBO(91, 158, 225, 1),
            foregroundColor: Colors.white,
          ))),
      home: const Splash(),
    );
  }
}
