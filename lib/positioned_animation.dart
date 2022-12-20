import 'package:flutter/material.dart';

class PositionedAnimation extends StatefulWidget {
  const PositionedAnimation({super.key});

  @override
  State<PositionedAnimation> createState() => _PositionedAnimationState();
}

class _PositionedAnimationState extends State<PositionedAnimation> {
  double top = 12;
  double left = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            AnimatedPositioned(
              curve: Curves.ease,
              duration: const Duration(seconds: 1),
              top: top,
              left: left,
              child: GestureDetector(
                onTap: () => setState(() {
                  top += 50;
                  left += 25;
                }),
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
