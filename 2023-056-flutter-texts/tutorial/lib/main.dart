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
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.deepPurple,
            child: RichText(
              text: const TextSpan(
                text: "Hello ",
                style: TextStyle(color: Colors.deepOrange, fontSize: 50),
                children: [
                  TextSpan(
                    text: "World !",
                    style: TextStyle(fontSize: 40, color: Colors.white),
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
