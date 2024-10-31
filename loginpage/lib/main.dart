import 'package:flutter/material.dart';
import 'package:loginpage/homepage.dart';
import 'package:loginpage/loginpage.dart';
import 'package:loginpage/mainpage.dart';
import 'package:loginpage/signuppage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(
    MaterialApp(
      home: HomePage(),
      routes: {
        "signup":(context)=>SignupPage()
      },
    )
  );
}