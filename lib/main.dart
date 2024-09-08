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
          backgroundColor: const Color(0xff2d3134),
          dragHandleColor: const Color(0xff47484c),
          dragHandleSize: const Size(40, 4),
          modalBarrierColor: Colors.black.withOpacity(0.4),
        ),
      ),
      // home: BottomNavBar(),
    );
  }
}