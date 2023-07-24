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
  var _currentIndex = 0;
  final _pages = [
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/search': (context) => const SearchScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
      initialRoute: '/home',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        /*
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            Navigator.pushNamed(context, '/home');
          },
          currentIndex: _currentIndex,
          backgroundColor: Colors.deepPurpleAccent,
          selectedItemColor: Colors.deepOrangeAccent,
          unselectedItemColor: Colors.white.withOpacity(.5),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
         */
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepPurpleAccent,
                Colors.deepOrange,
              ],
            ),
          ),
          child: Center(child: Builder(builder: (context) {
            return MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Text(
                'Go to Home Screen',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            );
          })),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurpleAccent,
              Colors.deepOrange,
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/search');
                },
                child: const Text(
                  'Go to Search Screen',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Screen'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Center(
          child: Text(
            'SearchScreen',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'ProfileScreen',
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
    );
  }
}
