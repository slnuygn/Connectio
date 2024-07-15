import 'package:connectio/connectio/SettingsPostsYouLiked.dart';
import 'package:connectio/connectio/SplashScreen.dart';
import 'package:connectio/connectio/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'SettingsGroups.dart';
import 'SettingsFriends.dart';
import 'SettingsYourPosts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});


  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Add a SizedBox with specified height for spacing
          // Second Container
          Container(
            width: double.infinity, // Width of the button spans the width of the screen
            height: 50, // Height of the button
            decoration: BoxDecoration(
              color:  const Color(0x54645252), // Background color of the button
              borderRadius: BorderRadius.circular(0), // Border radius to make it rectangular
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsGroups()), // Assuming SettingsPage is a StatelessWidget
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grupların',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10), // Add a SizedBox with specified height for spacing
          // Second Container
          Container(
            width: double.infinity, // Width of the button spans the width of the screen
            height: 50, // Height of the button
            decoration: BoxDecoration(
              color:  const Color(0x54645252), // Background color of the button
              borderRadius: BorderRadius.circular(0), // Border radius to make it rectangular
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsFriends()), // Assuming SettingsPage is a StatelessWidget
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Arkadaşların',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10), // Add a SizedBox with specified height for spacing
          // Second Container
          Container(
            width: double.infinity, // Width of the button spans the width of the screen
            height: 50, // Height of the button
            decoration: BoxDecoration(
              color:  const Color(0x54645252), // Background color of the button
              borderRadius: BorderRadius.circular(0), // Border radius to make it rectangular
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsYourPosts()), // Assuming SettingsPage is a StatelessWidget
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Gönderilerin',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity, // Width of the button spans the width of the screen
            height: 50, // Height of the button
            decoration: BoxDecoration(
              color:  const Color(0x54645252), // Background color of the button
              borderRadius: BorderRadius.circular(0), // Border radius to make it rectangular
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPostsYouLiked()), // Assuming SettingsPage is a StatelessWidget
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Beğendiğin Gönderiler',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity, // Width of the button spans the width of the screen
            height: 50, // Height of the button
            decoration: BoxDecoration(
              color:  const Color(0x54645252), // Background color of the button
              borderRadius: BorderRadius.circular(0), // Border radius to make it rectangular
            ),
            child: MaterialButton(
              onPressed: () {
                // Add your onPressed action here
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bilgilerini Güncelle',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity, // Width of the button spans the width of the screen
            height: 50, // Height of the button
            decoration: BoxDecoration(
              color:  const Color(0x54645252), // Background color of the button
              borderRadius: BorderRadius.circular(0), // Border radius to make it rectangular
            ),
            child: MaterialButton(
              onPressed: () {
                // Add your onPressed action here
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Engellenen Kişiler',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10), // Add a SizedBox with specified height for spacing
          // Second Container
          Container(
            width: double.infinity, // Width of the button spans the width of the screen
            height: 50, // Height of the button
            decoration: BoxDecoration(
              color:  const Color(0x54645252), // Background color of the button
              borderRadius: BorderRadius.circular(0), // Border radius to make it rectangular
            ),
            child: MaterialButton(
              onPressed: () {
                // Add your onPressed action here
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Şikayet Kutusu',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity, // Width of the button spans the width of the screen
            height: 50, // Height of the button
            decoration: BoxDecoration(
              color:  const Color(0x54645252), // Background color of the button
              borderRadius: BorderRadius.circular(0), // Border radius to make it rectangular
            ),
            child: MaterialButton(
              onPressed: () {
                // Add your onPressed action here
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hesabını Sil',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10), // Add a SizedBox with specified height for spacing
          // Second Container
          Container(
            width: double.infinity, // Width of the button spans the width of the screen
            height: 50, // Height of the button
            decoration: BoxDecoration(
              color: const Color(0x54645252), // Background color of the button
              borderRadius: BorderRadius.circular(0), // Border radius to make it rectangular
            ),
            child: MaterialButton(
              onPressed: () async {
                await signOutWithGoogle();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder:
                      (context) => const SplashScreen(),
                  ),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Çıkış Yap',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
