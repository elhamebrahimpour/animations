import 'package:flutter/material.dart';

class RotationAnimation extends StatefulWidget {
  const RotationAnimation({super.key});

  @override
  State<RotationAnimation> createState() => _RotationAnimationState();
}

class _RotationAnimationState extends State<RotationAnimation> {
  double turn = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: AnimatedRotation(
            curve: Curves.bounceIn,
            turns: turn,
            duration: const Duration(milliseconds: 100),
            child: GestureDetector(
              onTap: () => setState(() {
                if (turn == 1) {
                  turn = 3;
                } else {
                  turn = 1;
                }
              }),
              child: Image.asset(
                'images/asset4.webp',
                height: 100,
                width: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
