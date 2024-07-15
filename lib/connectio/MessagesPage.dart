import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 5.0, top: 32.0),
            child: Text(
              'Grupların',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 5.0), // Add more space between title and container
          Container(
            decoration: BoxDecoration(
              color: const Color(0x54645252), // Background color of the button
              borderRadius: BorderRadius.circular(9), // Border radius to make it rectangular
            ),

            width: 390,
            height: 120.0,
            // Change the color to your preference
            // Add child widgets here if needed
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5.0, top: 10.0),
            child: Text(
              'Konuşmaların',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 5.0),

        ],
      ),
    );
  }
}
