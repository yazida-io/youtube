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
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Icon(Icons.add),
        ),
        body: Container(
          color: Colors.deepPurple,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepOrange),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('text Button', style: TextStyle(fontSize: 30)),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add, size: 30, color: Colors.white,),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Hello', style: TextStyle(fontSize: 30)),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Hello', style: TextStyle(fontSize: 30)),
                ),
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.red,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Material button',
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
