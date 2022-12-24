import 'package:flutter/material.dart';

class SwitchAnimation extends StatefulWidget {
  const SwitchAnimation({super.key});

  @override
  State<SwitchAnimation> createState() => _SwitchAnimationState();
}

class _SwitchAnimationState extends State<SwitchAnimation> {
  bool isSwitchedTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () => setState(() {
              isSwitchedTrue = !isSwitchedTrue;
            }),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: isSwitchedTrue
                  ? const Image(
                      height: 200,
                      width: 200,
                      image: AssetImage(
                        'images/asset4.webp',
                      ),
                    )
                  : const Image(
                      height: 200,
                      width: 200,
                      image: AssetImage(
                        'images/asset3.webp',
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
