

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../services/firebaseservice.dart';
import 'login.dart';


class signuppage extends StatefulWidget {


  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  firebaseservice fire = firebaseservice();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();



  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3f03c64),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SizedBox(
                height: 50,
              ),

              SizedBox(height: 100),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'name',
                  prefixIcon: Icon(Icons.account_box, color: Colors.pink),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Email Address',
                  prefixIcon: Icon(Icons.email, color: Colors.pink),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: Colors.pink),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                child: ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {
                    fire.register(

                        email: emailController.text,
                        password: passwordController.text,
                        context: context);
                  },
                  child: Text('Signup',
                      style: TextStyle(color: Colors.pink, fontSize: 18)),
                ),
              ),
              SizedBox(height: 10),

              SizedBox(height: 20,),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: 'Already Have An Account? ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ));
                            // Handle sign in navigation
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
