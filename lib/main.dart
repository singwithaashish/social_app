import 'package:flutter/material.dart';
import 'package:friend_maker/screens/home_screen.dart';
import 'package:friend_maker/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(), //WelcomeScreen(),
      ),
    );
  }
}
