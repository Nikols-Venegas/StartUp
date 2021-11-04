import 'package:flutter/material.dart';
import 'package:green_pure_/Pages/ControlPanel/controlPanel.dart';
import 'package:green_pure_/Pages/RegisterUser/Login/LoginPage.dart';
import 'package:green_pure_/Pages/RegisterUser/SignUp/SignupPage.dart';
import 'package:green_pure_/Pages/SlpashScreen/SplashScreen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'splashScreen': (_) => SplashScreen(),
  'controlPanel': (_) => HomePage(),
  'loginpage': (_) => LoginPage(),
  'signuppage': (_) => SignUpPage()
};
