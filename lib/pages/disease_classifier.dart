import 'package:dr_derm_frontend/components/bottom_nav.dart';
import 'package:dr_derm_frontend/pages/scan_disease.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class DiseaseClassifierPage extends StatefulWidget {
  const DiseaseClassifierPage({super.key});

  @override
  State<DiseaseClassifierPage> createState() => _DiseaseClassifierPageState();
}

class _DiseaseClassifierPageState extends State<DiseaseClassifierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: const Color(0xff0a0c16),
      body: body(),
    );
  }

  Container body() {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 130,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: SvgPicture.asset(
                      'assets/images/disease-classifier-logo.svg',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 160,
                  child: Text(
                    'Disease Classifier is an advanced AI-driven feature designed to assess your skin\'s health by scanning for potential issues and providing medical recommendations.',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
          ),
          const Text(
            'Instructions',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w700,
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
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScanDiseasePage(),
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
                    'Upload Image',
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
    /*Container(
            height: 70,
            // color: Colors.red,
            child: Row(
              children: [
                _selectedImage != null ? const Text('data')/*Image.file(_selectedImage!)*/ : const Text('Please select an Image text')
              ],
            ),

          ),*/
        ],
      ),
    );
  }

  AppBar appBar(context) {
    return AppBar(
      title: const Text(
        'Disease Classifier',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: const Color(0xff0a0c16),
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const BottomNavBar())
          );
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