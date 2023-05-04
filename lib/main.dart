import 'package:flutter/material.dart';
import 'package:fugi_diary_apps/screen/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FUGI Diary Apps',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
