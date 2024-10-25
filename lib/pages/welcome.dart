import 'package:dr_derm_frontend/components/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late final LocalAuthentication auth;
  bool _supportState = false;

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      authenticated = await auth.authenticate(
        localizedReason: 'Scan your fingerprint to authenticate',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;
    if (authenticated) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    auth = LocalAuthentication();
    auth.isDeviceSupported().then((bool isSupported) {
      setState(() {
        _supportState = isSupported;
      });
    });
  }

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
              "This app is intended for informational purposes only and is not a substitute for professional medical advice. Always consult with a qualified healthcare provider before making any changes to your skincare routine. The app\'s recommendations are based on AI algorithms and may not be suitable for everyone. Individual results may vary. The developer is not responsible for any adverse reactions or health issues that may arise from following the app\'s suggestions.",
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
              if (_supportState) {
                _authenticate();
              } else {
                print('Biometric not supported');
              }
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const BottomNavBar(),
              //   ),
              // );
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
                    'Agree & Proceed',
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