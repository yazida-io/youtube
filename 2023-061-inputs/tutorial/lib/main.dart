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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.deepPurple,
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(70.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Saisissez votre Email',
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      return (value != null && value.isNotEmpty)
                          ? null
                          : 'Email requis';
                    },
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    validator: (value) {
                      return (value != null && value.isNotEmpty)
                          ? null
                          : 'MDP requis';
                    },
                    decoration: const InputDecoration(
                      hintText: 'Saisissez votre MDP',
                      labelText: 'Mot de passe',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("OK");
                      }
                    },
                    child: const Text('Connexion'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
