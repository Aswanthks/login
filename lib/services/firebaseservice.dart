
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/login.dart';



class firebaseservice {
  void register(
      {
        required String email,
        required String password,
        required BuildContext context,
      }) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "Succesfull",

          )));
      print("success");
    } on FirebaseAuthException catch (a) {
      print(a.message);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.black,
          content: Text(
            a.message ?? "",

          )));
    }
  }
}