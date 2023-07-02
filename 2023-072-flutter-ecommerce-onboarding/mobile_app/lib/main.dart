import 'package:flutter/material.dart';
import 'package:mobile_app/screens/onboarding.screen.dart';
import 'package:mobile_app/screens/sign-in.screen.dart';
import 'package:mobile_app/screens/sign-up.screen.dart';
import 'package:mobile_app/screens/slash.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        SlashScreen.routeName: (context) => const SlashScreen(),
        Onboarding.routeName: (context) => const Onboarding(),
        SignInScreen.routeName: (context) => const SignInScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
      },
      initialRoute: SlashScreen.routeName,
    );
  }
}

