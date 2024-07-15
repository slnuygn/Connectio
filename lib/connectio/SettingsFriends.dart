import 'package:flutter/material.dart';

class SettingsFriends extends StatelessWidget {
  const SettingsFriends({Key? key});

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
          'Arkadaşların',
          style: TextStyle(color: Colors.white), // Set 'Gruplar' text color to white
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5.0),
            ),
            const SizedBox(height: 5.0), // Add more space between title and container
            Container(
              decoration: BoxDecoration(
                color: const Color(0x54645252), // Background color of the container
                borderRadius: BorderRadius.circular(9), // Border radius to make it rectangular
              ),
              width: 390,
              height: 120.0,
              // Change the color to your preference
              // Add child widgets here if needed
            ),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
