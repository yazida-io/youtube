import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      'Explore Endless Possibilities',
      "Experience a seamless shopping journey with Yazida. Discover a wide range of products and enjoy personalized recommendations.",
      'onboarding-1.png'
    ),
    (
      'Uncover Unique Treasures',
      "Dive into our diverse collection of fashion, electronics, home decor, and more. Find inspiration for your next purchase.",
      'onboarding-2.png'
    ),
    (
      'Shop with Confidence',
      "Simplify your shopping experience with secure checkout and hassle-free payments for swift delivery.",
      'onboarding-3.png'
    ),
    (
      'Tailored Just for You',
      "Enjoy curated recommendations based on your preferences, browsing history, and previous purchases. Discover new brands and related products.",
      'onboarding-4.png'
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 300,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/images/$image',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 30, color: Colors.deepPurple,
                          ),
                        ),
                        Text(
                          description,
                          textAlign: TextAlign.center,
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
