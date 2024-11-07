import 'package:flutter/material.dart';
import 'package:sierra/screens/temp_splash.dart';

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
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(226, 62, 62, 1),
          primary: const Color.fromRGBO(226, 62, 62, 1),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
      ),
      home: const TempSplash(),
    );
  }
}
