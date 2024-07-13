

import 'package:dhanwis/screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../HOME.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  void signInWithEmailAndPassword(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("User is successfully signed in"),
          duration: Duration(seconds: 2),
        ),
      );

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => home()));
    } catch (e) {
      print('Login Failed: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login Failed: $e"),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3f03c64),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(height: 100),

              SizedBox(height: 20),
              Text("Login",style: TextStyle(color: Colors.white,fontSize: 20)),
              SizedBox(height: 15),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.pink),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: Colors.pink),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              Container(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    signInWithEmailAndPassword(context);
                  },
                  child: Text('Login', style: TextStyle(color: Colors.pink)),
                ),
              ),
              SizedBox(height: 14),
              Text.rich(
                TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: 'Sign Up for free',
                      style: TextStyle(color: Colors.blueAccent),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signuppage()),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
