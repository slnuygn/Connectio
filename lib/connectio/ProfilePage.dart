import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1212),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(350, 20, 10, 10),
              child: IconButton(
                icon: const Icon(
                  Icons.create_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Add your edit action here
                },
              ),
            ), // Adding some space from top
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: FirebaseAuth.instance.currentUser != null && FirebaseAuth.instance.currentUser!.photoURL != null
                    ? NetworkImage(FirebaseAuth.instance.currentUser!.photoURL!)
                    : null,
                child: FirebaseAuth.instance.currentUser == null || FirebaseAuth.instance.currentUser!.photoURL == null
                    ? const Icon(Icons.person, size: 70, color: Colors.white)
                    : null,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  FirebaseAuth.instance.currentUser!.displayName!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  '@user_id',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Bio',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Container(
              width: 390.0,
              decoration: BoxDecoration(
                color: const Color(0x54645252),
                borderRadius: BorderRadius.circular(9.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                      'Ut enim ad minim veniam, quis nostrud exercitation '

                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum '
                      'dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, '
                      'sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                      'Ut enim ad minim veniam, quis nostrud exercitation '
                      'ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum '
                      'dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, '
                      'sunt in culpa qui officia deserunt mollit anim id est laborum.'
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                      'Ut enim ad minim veniam, quis nostrud exercitation '
                      'ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum '
                      'dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, '
                      'sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
            ),

          ],
        ),
      ),
    );
  }
}
