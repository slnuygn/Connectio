import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'google_sign_in.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isFirebaseInitialized = false;

  @override
  void initState() {
    super.initState();
    initializeFirebase();
  }

  Future<void> initializeFirebase() async {
    await Firebase.initializeApp();
    setState(() {
      isFirebaseInitialized = true;
    });
    if (FirebaseAuth.instance.currentUser != null) {
      anaSayfayaGit();
    }
  }

  void anaSayfayaGit() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const BottomNavigationBarExample(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1212), // Set background color to black
      body: Center(
        child: isFirebaseInitialized
            ? ElevatedButton(
          onPressed: () async {
            await signInWithGoogle();

            String uid = FirebaseAuth.instance.currentUser!.uid;

            await FirebaseFirestore.instance
                .collection('Kullanıcılar')
                .doc(uid)
                .set(
              {
                'Giriş Yaptı Mı? ': true,
                'Son Giriş Tarihi: ': FieldValue.serverTimestamp()
              },
              SetOptions(merge: true),
            );

            anaSayfayaGit();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0x54645252), // Set button background color to white
          ),
            child: const Text(
            'Google Sign In',
            style: TextStyle(color: Colors.white), // Set text color to red
          ),
        )
            : const CircularProgressIndicator(),
      ),
    );
  }
}

