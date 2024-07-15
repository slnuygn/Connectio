import 'package:flutter/material.dart';

class SettingsYourPosts extends StatelessWidget {
  const SettingsYourPosts({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1212), // Set background color for the page
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1212), // Set app bar background color
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white), // Set arrow color to white
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Gönderilerin',
          style: TextStyle(color: Colors.white), // Set 'Gruplar' text color to white
        ),
      ),
    );
  }
}
