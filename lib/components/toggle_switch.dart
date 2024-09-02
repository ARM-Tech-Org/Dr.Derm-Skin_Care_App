import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSwitched = !isSwitched;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 25.0,
        width: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
              top: 0.0,
              left: isSwitched ? 23.0 : 0.0,
              right: isSwitched ? 0.0 : 50.0,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: isSwitched
                    ? Icon(
                        Icons.circle,
                        color: const Color(0xff006cff),
                        key: UniqueKey(),
                      )
                    : Icon(
                        Icons.circle,
                        color: const Color(0xff43454a),
                        key: UniqueKey(),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}