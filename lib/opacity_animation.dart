import 'package:flutter/material.dart';

class OpacityAnimation extends StatefulWidget {
  const OpacityAnimation({super.key});

  @override
  State<OpacityAnimation> createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation> {
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: opacity,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.indigo[800],
                child: Image.asset(
                  'images/asset3.webp',
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            MaterialButton(
              color: Colors.black,
              onPressed: () {
                setState(() {
                  if (opacity == 1) {
                    opacity = 0.5;
                  } else {
                    opacity = 1;
                  }
                });
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                child: Text(
                  'Click to Fade Out / In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
