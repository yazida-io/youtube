import 'package:flutter/material.dart';
import 'package:mobile_app/screens/onboarding.screen.dart';
import 'package:mobile_app/services/auth.service.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 20),
          FutureBuilder(
              future: AuthService.getUser(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(child: Text('Something went wrong'));
                }

                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }

                var user = snapshot.data!;

                return Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/20795916?v=4"),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user['name'],
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              user['email'],
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
          const SizedBox(height: 20),
          ProfileItem(
            title: 'Edit Profile',
            isNew: false,
            icon: Icons.edit,
            onTap: () {},
          ),
          const ProfileItem(
            title: 'Shipping Address',
            isNew: false,
            icon: Icons.location_on,
          ),
          const ProfileItem(
            title: 'Wishlist',
            isNew: true,
            icon: Icons.favorite,
          ),
          const ProfileItem(
            title: 'Order History',
            isNew: false,
            icon: Icons.timer,
          ),
          const ProfileItem(
            title: 'Track Order',
            isNew: false,
            icon: Icons.track_changes,
          ),
          const ProfileItem(
            title: 'Cards',
            isNew: false,
            icon: Icons.payment_outlined,
          ),
          const ProfileItem(
            title: 'Notifications',
            isNew: false,
            icon: Icons.notifications,
          ),
          ProfileItem(
            title: 'Log Out',
            isNew: false,
            icon: Icons.output_rounded,
            onTap: () async {
              AuthService.signOut().then((value) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  Onboarding.routeName,
                  (route) => false,
                );
              });
            },
            hasNewPage: false,
          ),
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool? isNew;
  final bool? hasNewPage;
  final Function()? onTap;

  const ProfileItem(
      {super.key,
      required this.title,
      required this.icon,
      this.onTap,
      required this.isNew,
      this.hasNewPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent.shade100.withOpacity(.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                color: Colors.blueGrey,
                size: 30,
              ),
            ),
            const SizedBox(width: 20),
            Text(title),
            Expanded(child: Container()),
            if (hasNewPage == null || hasNewPage == true)
              const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
