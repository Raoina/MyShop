import 'package:flutter/material.dart';
import 'package:shoptask/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 58, 5, 116)),
        scaffoldBackgroundColor: Color.fromARGB(255, 36, 4, 61),
      ),
    );
  }
}
