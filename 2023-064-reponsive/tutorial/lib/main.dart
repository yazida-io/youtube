import 'package:flutter/material.dart';

void main() {
  runApp(const MyTutorialApp());
}

class MyTutorialApp extends StatefulWidget {
  const MyTutorialApp({super.key});

  @override
  State<MyTutorialApp> createState() => _MyTutorialAppState();
}

class _MyTutorialAppState extends State<MyTutorialApp> {
  List<String> list = List.generate(100, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurpleAccent, Colors.deepOrangeAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.white,
              child: OrientationBuilder(
                builder: (context, orientation) {
                  return (MediaQuery.of(context).orientation == Orientation.portrait) ? Text('P') : Text("L");
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
