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
          color: Colors.white,
          child: Center(
            child: Container(
              width: 400,
              height: 500,
              decoration: const BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.deepPurple,
                    child: Center(
                      child: Text(
                        list[index],
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
