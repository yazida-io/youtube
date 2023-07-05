import 'package:flutter/material.dart';
import 'package:mobile_app/screens/main.dart';
import 'package:mobile_app/screens/onboarding.screen.dart';
import 'package:mobile_app/screens/product.screen.dart';
import 'package:mobile_app/screens/products.screen.dart';
import 'package:mobile_app/screens/sign-in.screen.dart';
import 'package:mobile_app/screens/sign-up.screen.dart';
import 'package:mobile_app/screens/slash.screen.dart';
import 'package:provider/provider.dart';

import 'models/cart.model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Cart(),
      child: const MyApp(),
    ),
  );
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
        MainScreen.routeName: (context) => const MainScreen(),
        ProductsScreen.routeName: (context) => const ProductsScreen(),
        ProductScreen.routeName: (context) => const ProductScreen(),
      },
      initialRoute: SlashScreen.routeName,
    );
  }
}

