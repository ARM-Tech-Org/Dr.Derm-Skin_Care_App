import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: const Color(0xff0a0c16),
      body: body(),
    );
  }

  Column body(){
    return const Column(
      children: [

      ],
    );
  }


  AppBar appBar(){
    return AppBar(
      title: const Text(
        'Welcome to Dr. Derm',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color(0xff0a0c16),
      elevation: 0,
      leading: GestureDetector(
        onTap: () {

        },
        child: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: SvgPicture.asset('assets/icons/double-arrow-left.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}



/*

class _WelcomePage extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          color: const Color(0xff0a0c16),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              width: 390,
              top: 0,
              height: 844,
              child: Image.asset('images/image1_5682.png', width: 390, height: 844, fit: BoxFit.fill,),
            ),
            Positioned(
              left: 36,
              width: 318,
              top: 735,
              height: 40,
              child: Container(
                width: 318,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xff2684fc),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 107, top: 11, right: 107, bottom: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                        style: TextStyle(decoration: TextDecoration.none, fontSize: 20, color: const Color(0xfffcfcfc), fontFamily: 'Quicksand-SemiBold', fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 36,
              width: 262,
              top: 305,
              child: Text(
                'Let’s \nDiscover \nDr. Derm',
                textAlign: TextAlign.left,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 36, color: const Color(0xffffffff), fontFamily: 'Poppins-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 36,
              width: 318,
              top: 519,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.ore eu fugiat nulla pariatur. ',
                textAlign: TextAlign.center,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xffffffff), fontFamily: 'Poppins-Medium', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 77,
              width: 236,
              top: 110,
              height: 103,
              child: Image.asset('images/image2_56134.png', width: 236, height: 103, fit: BoxFit.cover,),
            ),
          ],
        ),
      ),
    );
  }
}
*/
