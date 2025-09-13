import 'package:alieus_captials_09_08/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:alieus_captials_09_08/view/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system, // Can be ThemeMode.light or ThemeMode.dark
      debugShowCheckedModeBanner: false,
     // theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }

  static of(BuildContext context) {}
}

