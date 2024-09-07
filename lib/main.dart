import 'package:dr_derm_frontend/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: const Color(0xff2e3859),
          dragHandleColor: Colors.white,
          dragHandleSize: const Size(60, 4),
          modalBarrierColor: Colors.white.withOpacity(0.05),
        ),
      ),
      // home: BottomNavBar(),
    );
  }
}