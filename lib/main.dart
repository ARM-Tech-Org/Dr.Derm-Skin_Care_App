import 'package:dr_derm_frontend/pages/bottom_nav.dart';
import 'package:dr_derm_frontend/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
      // home: BottomNavBar(),
    );
  }
}