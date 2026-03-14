import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IRAMA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6A5AE0)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashScreen(),
        '/home': (_) => const HomeScreen(),
      },
    );
  }
}