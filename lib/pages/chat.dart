import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: const Color(0xff0a0c16),
    );
  }


  AppBar appBar(){
    return AppBar(
      title: const Text(
        'Chat with Dr. Derm',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
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