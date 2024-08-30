import 'package:dr_derm_frontend/pages/beauty_face.dart';
import 'package:dr_derm_frontend/pages/disease_classifier.dart';
import 'package:dr_derm_frontend/pages/home.dart';
import 'package:dr_derm_frontend/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
    // UploadPage(),
    const WelcomePage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: gNav(),
    );
  }

  BottomNavigationBar defaultNav(){
    return BottomNavigationBar(
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
    );
  }

  Container gNav(){
    return Container(
      color: const Color(0xff0a0c16),
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: GNav(
        selectedIndex: _selectedIndex,
        onTabChange: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: const Color(0xff262d52),
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: const Color(0xff2684fc),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        tabBorderRadius: 30,
        gap: 8,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: '',
          ),
          GButton(
            icon: Icons.face,
            text: '',
          ),
          GButton(
            icon: Icons.scanner,
            text: '',
          ),
          GButton(
            icon: Icons.lightbulb,
            text: '',
          ),
          GButton(
            icon: Icons.settings,
            text: '',
          ),
        ],
      ),
    );
  }
}
