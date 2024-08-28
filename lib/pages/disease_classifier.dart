import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiseaseClassifierPage extends StatelessWidget {
  const DiseaseClassifierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: const Color(0xff0a0c16),
      body: body(),
    );
  }

  Container body() {
    return Container(
      // color: Colors.amber,
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180,
            // padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset('assets/images/disease-classifier-logo.svg',),
                  ),
                ),
                const SizedBox(
                  width: 150,
                  child: Text(
                      'Disease Classifier is an advanced AI-driven feature designed to assess your skin\'s health by scanning for potential issues and providing medical recommendations.',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Quicksand-Medium',
                        fontSize: 12,
                      ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'Instructions',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Quicksand-Bold',
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
          ),
          Container(
            height: 15,
          ),
          const Text(
            '1. Select the Area to Scan: Choose the specific area of your skin you want to scan (e.g., face, arm, leg).\n2. Ensure Good Lighting: Make sure you\'re in a well-lit environment to ensure a clear scan.\n3. Position the Camera: Hold your device\'s camera about 6-12 inches away from the skin area you want to scan.\n4. Focus and Steady: Keep the camera steady and ensure the skin area is fully in focus.\n5. Start Scanning: Tap the "Scan disease" button to begin the scan. Follow any on-screen prompts to adjust your position if necessary.',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Quicksand-Medium',
              fontSize: 12,
            ),
          ),
          const SizedBox(),
        ],
      ),
    );
  }

  AppBar appBar(){
    return AppBar(
      title: const Text(
        'DiseaseClassifier',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: const Color(0xff0a0c16),
      elevation: 0,
      leading: GestureDetector(
        onTap: () {

        },
        child: Container(
          margin: const EdgeInsets.only(left: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: SvgPicture.asset(
            'assets/icons/double-arrow-left.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}