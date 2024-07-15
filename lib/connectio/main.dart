import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'ExplorePage.dart';
import 'HomePage.dart';
import 'MessagesPage.dart';
import 'ProfilePage.dart';
import 'SettingsPage.dart';
import 'SplashScreen.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

//void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}



//BottomNavigationBarExample(),
//LoginPage(),

class BottomNavigationBarExample extends StatefulWidget {

  const BottomNavigationBarExample({Key? key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();

}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1212), // Use custom color here
      body: _buildBody(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.language_rounded),
            label: 'Explore',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: 'Messages',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }


  Widget _buildBody(int selectedIndex) {

    switch (selectedIndex) {
      case 0:
        return const ExplorePage();
      case 1:
        return const HomePage();
      case 2:
       return const MessagesPage();
      case 3:
        return const ProfilePage();
      case 4:
        return const SettingsPage();
      default:
        return const SizedBox.shrink();
    }
  }
}


