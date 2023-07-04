import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurple,
            Colors.deepOrange,
          ],
        ),
        shape: BoxShape.circle,
      ),
      child: const Center(child: Text('🌳', style: TextStyle(fontSize: 50))),
    );
  }
}
