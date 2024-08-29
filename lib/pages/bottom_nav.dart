import 'package:dr_derm_frontend/pages/beauty_face.dart';
import 'package:dr_derm_frontend/pages/disease_classifier.dart';
import 'package:dr_derm_frontend/pages/home.dart';
import 'package:dr_derm_frontend/pages/login.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const BeautyFacePage(),
    const DiseaseClassifierPage(),
    Container(),
    const WelcomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xff8f97ff),
        unselectedItemColor: const Color(0xfffcfcfc),
        backgroundColor: const Color(0xff31428f),
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'Beauty Face'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.scanner),
              label: 'Disease Classifier'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb),
              label: 'Health Tips'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
      ),
    );
  }
}
