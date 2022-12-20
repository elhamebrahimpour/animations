import 'package:animations/opacity_animation.dart';
import 'package:animations/positioned_animation.dart';
import 'package:animations/rotaion_animation.dart';
import 'package:animations/scale_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaleAnimation(),
    );
  }
}
