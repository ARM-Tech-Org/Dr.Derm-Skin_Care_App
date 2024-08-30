import 'package:dr_derm_frontend/pages/bottom_nav.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0c16),
      body: body(context),
    );
  }

  SingleChildScrollView body(context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 285,
          ),
          const Text(
            'Let’s \nDiscover \nDr. Derm',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 30,
              color: Color(0xffffffff),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            height: 195,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.ore eu fugiat nulla pariatur. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xffffffff),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNavBar(),
                ),
              );
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xff2684fc),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        color: Color(0xfffcfcfc),
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}