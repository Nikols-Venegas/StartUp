import 'package:flutter/material.dart';
import 'package:green_pure_/Pages/ControlPanel/controlPanel.dart';
import 'package:green_pure_/Pages/Login/Register.dart';
import 'package:green_pure_/Pages/Login/SignIn.dart';
import 'package:green_pure_/Pages/SlpashScreen/SplashScreen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'login': (_) => Login(),
  'register': (_) => RegisterFivePage(),
  'splashScreen': (_) => SplashScreen(),
  'controlPanel': (_) => HomePage()
};
