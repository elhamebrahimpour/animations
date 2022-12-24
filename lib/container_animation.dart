import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
  const ContainerAnimation({super.key});

  @override
  State<ContainerAnimation> createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => setState(() {
                    _selectedIndex = index;
                  }),
                  child: AnimatedContainer(
                    margin: const EdgeInsets.all(14),
                    duration: const Duration(milliseconds: 300),
                    height: 60,
                    width: index == _selectedIndex ? 60 : 30,
                    color:
                        index == _selectedIndex ? Colors.green : Colors.amber,
                    child: AnimatedScale(
                      duration: const Duration(milliseconds: 500),
                      scale: index == _selectedIndex ? 1 : 0,
                      child: const Center(
                        child: Text('120'),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
