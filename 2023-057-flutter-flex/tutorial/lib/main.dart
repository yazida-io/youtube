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
          color: Colors.black54,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            // ROW(HOR) - COLUM(VER)
            mainAxisAlignment: MainAxisAlignment.center,

            // ROW(VER) - COLUM(HOR)
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(color: Colors.redAccent, width: 100, height: 200),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blueAccent,
                  width: 100,
                  height: 200,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
