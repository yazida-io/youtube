import 'package:flutter/material.dart';
import 'package:mobile_app/screens/onboarding.screen.dart';

import '../services/auth.service.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
        ),
        onPressed: () {
          AuthService.signOut();
          Navigator.pushReplacementNamed(context, Onboarding.routeName);
        },
        child: const Text('Logout'),
      ),
    ));
  }
}
