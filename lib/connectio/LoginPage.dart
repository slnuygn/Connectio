import 'package:flutter/material.dart';
import 'main.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: const Color(0xFF1A1212),
        appBar: AppBar(
          title: const Text('Login Page',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF1A1212),
        ),

        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: LoginFormWidget(),
        ),
      ),
    );
  }
}



class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key});

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginFormWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _emailController,
          style: const TextStyle(color: Colors.white), // Set text color here
          decoration: const InputDecoration(
            labelText: 'Email or User ID',
            labelStyle: TextStyle(color: Colors.white), // Set label color here
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white), // Set underline color
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white), // Set focused underline color
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        TextField(
          controller: _passwordController,
          obscureText: _isObscure,
          style: const TextStyle(color: Colors.white), // Set text color here
          decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: const TextStyle(color: Colors.white), // Set label color here
            suffixIcon: IconButton(
              icon: Icon(
                _isObscure ? Icons.visibility : Icons.visibility_off,
                color: Colors.white, // Set icon color here
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white), // Set border color when enabled
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white), // Set border color when focused
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextButton(
              onPressed: () {
                // Implement forgot password functionality
              },
              child: const Text(
                'Forgot your password?',
                style: TextStyle(color: Colors.white),
              ),
            ),

            TextButton(
              onPressed: () {
                // Implement sign up functionality
              },
              child: const Text(
                'Don\'t have an account?',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BottomNavigationBarExample()), // Assuming SettingsPage is a StatelessWidget
            );

            // Implement login functionality
          },
          child: const Text('Login',
                style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}