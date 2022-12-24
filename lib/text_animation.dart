import 'package:flutter/material.dart';

class TextAnimation extends StatefulWidget {
  const TextAnimation({super.key});

  @override
  State<TextAnimation> createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation> {
  double scale = 2;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
            child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 500),
          style: TextStyle(
            color: Colors.blue,
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
          child: Text('Flutter Programming ...'),
        )),
      ),
    );
  }
}
