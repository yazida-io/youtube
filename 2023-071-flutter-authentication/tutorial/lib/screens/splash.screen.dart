import 'package:flutter/material.dart';
import 'package:tutorial/screens/products.screen.dart';
import 'package:tutorial/screens/signin.screen.dart';
import 'package:tutorial/services/auth.service.dart';

import '../common/ui.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = 'splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _init(BuildContext context) async {
    var authenticated = await AuthService.check();
    await Future.delayed(const Duration(seconds: 2));

    if (authenticated) {
      Navigator.pushReplacementNamed(context, ProductsScreen.routeName);
    } else {
      Navigator.pushReplacementNamed(context, SignInScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    _init(context);

    return Scaffold(
      body: Container(
        decoration: defaultScreenDecoration,
        child: const Center(
          child: Text(
            'Loading...',
            style: TextStyle(fontSize: 29, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
