import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0c16),
      body: body(),
    );
  }

  Column body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 270,
        ),
        Container(
          height: 160,
          margin: const EdgeInsets.only(left: 34),
          child: const Text(
            'Let’s \nDiscover \nDr. Derm',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 32,
                color: Color(0xffffffff),
                fontFamily: 'Poppins-Bold',
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 180,
          padding: const EdgeInsets.only(top: 40, left: 36, right: 36),
          child: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.ore eu fugiat nulla pariatur. ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12,
                color: Color(0xffffffff),
                fontFamily: 'Poppins-Medium',
                fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(
          height: 145,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                margin: const EdgeInsets.all(33),
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
                      style: TextStyle(decoration: TextDecoration.none,
                          fontSize: 16,
                          color: Color(0xfffcfcfc),
                          fontFamily: 'Quicksand-SemiBold',
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}