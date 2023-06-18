import 'package:flutter/material.dart';

void main() {
  runApp(const MyTutorialApp());
}

class MyTutorialApp extends StatelessWidget {
  const MyTutorialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.deepPurple,
          child: Center(
            child: Container(
              width: 300,
              height: 300,
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: 125,
                    left: 125,
                    child: Container(
                      color: Colors.redAccent,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      color: Colors.blueAccent,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
