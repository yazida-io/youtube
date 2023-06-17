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
          color: Colors.black87,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.pink, Colors.deepPurple, Colors.deepOrangeAccent],
                      begin: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: const Padding(
                padding: EdgeInsets.all(50.0),
                child: Text(
                  'Hello world',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
