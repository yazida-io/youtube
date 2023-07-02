import 'package:flutter/material.dart';
import 'package:mobile_app/screens/sign-in.screen.dart';
import 'package:mobile_app/screens/sign-up.screen.dart';

class Onboarding extends StatefulWidget {
  static const routeName = 'onboarding';

  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController _pageController;
  int _currentPage = 0;

  final _pageContents = [
    (
      'A Shop in your pocket',
      "We're very lucky to find you! With Shopy we can save your lovely time.",
      Colors.deepPurple
    ),
    (
      'A Shop in your pocket',
      "We're very lucky to find you! With Shopy we can save your lovely time.",
      Colors.indigoAccent
    ),
    (
      'A Shop in your pocket',
      "We're very lucky to find you! With Shopy we can save your lovely time.",
      Colors.blueAccent
    ),
    (
      'A Shop in your pocket',
      "We're very lucky to find you! With Shopy we can save your lovely time.",
      Colors.deepOrange
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: PageView(
                  controller: _pageController,
                  children: List.generate(_pageContents.length, (index) {
                    var (title, description, image) = _pageContents[index];

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 300,
                          width: double.infinity,
                          color: image,
                        ),
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 30, color: Colors.deepPurple),
                        ),
                        Text(
                          description,
                          style: const TextStyle(
                            fontSize: 19,
                            color: Colors.black45,
                          ),
                        )
                      ],
                    );
                  }),
                ),
              ),
            ),
            PageIndicators(
                currentPage: _currentPage, totalPages: _pageContents.length),
            const AuthenticationButtons(),
          ],
        ),
      ),
    );
  }
}

class AuthenticationButtons extends StatelessWidget {
  const AuthenticationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 70),
                foregroundColor: Colors.deepOrange,
              ),
              child: const Text('Login', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, SignUpScreen.routeName);
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 70),
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
              ),
              child: const Text('Sign Up', style: TextStyle(fontSize: 20)),
            ),
          ],
        ));
  }
}

class PageIndicators extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  const PageIndicators(
      {super.key, required this.currentPage, required this.totalPages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < totalPages; i++)
              Container(
                width: i == currentPage ? 30 : 10,
                height: 10,
                decoration: BoxDecoration(
                  color: i == currentPage ? Colors.deepOrange : Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.all(5),
              ),
          ],
        ));
  }
}
