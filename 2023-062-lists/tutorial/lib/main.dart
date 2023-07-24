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
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, element) => Padding(
                padding: const EdgeInsets.all(7),
                child: Container(
                  color: Colors.deepPurple,
                  height: 70,
                  width: 30,
                  child: Center(
                      child: Text(
                        list[element],
                        style: const TextStyle(color: Colors.white),
                      )),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
