import 'package:flutter/material.dart';

class ScaleAnimation extends StatefulWidget {
  const ScaleAnimation({super.key});

  @override
  State<ScaleAnimation> createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation> {
  double scale = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: AnimatedScale(
            duration: const Duration(milliseconds: 100),
            scale: scale,
            child: InkWell(
              onTap: () => setState(() {
                if (scale == 2) {
                  scale += 1;
                } else {
                  scale -= 1;
                }
              }),
              child: Image.asset(
                'images/asset3.webp',
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
