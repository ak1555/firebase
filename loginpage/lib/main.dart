import 'package:flutter/material.dart';
import 'package:loginpage/loginpage.dart';
import 'package:loginpage/signuppage.dart';

void main() {
  runApp(
    MaterialApp(
      home: LoginPage(),
      routes: {
        "signup":(context)=>SignupPage()
      },
    )
  );
}