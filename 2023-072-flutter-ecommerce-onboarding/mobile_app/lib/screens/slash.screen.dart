import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:mobile_app/screens/home.screen.dart';
import 'package:mobile_app/screens/onboarding.screen.dart';
import 'package:mobile_app/services/auth.service.dart';

class SlashScreen extends StatefulWidget {
  static const routeName = 'slash';

  const SlashScreen({super.key});

  @override
  State<SlashScreen> createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SlashScreen> {

  @override
  void initState() {
    super.initState();

    AuthService.check().then((value) {
      if (value) {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      } else {
        Navigator.pushReplacementNamed(context, Onboarding.routeName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: const Center(
          child: LoadingIndicator(
              indicatorType: Indicator.ballClipRotatePulse,
              colors: [Colors.deepOrange, Colors.white],
              strokeWidth: 2,
          ),
        ),
      ),
    );
  }
}
