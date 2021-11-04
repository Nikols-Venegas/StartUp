import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:green_pure_/Pages/RegisterUser/Login/LoginPage.dart';
import 'package:green_pure_/Pages/RegisterUser/Welcome/WelcomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xff181717),
                Colors.green,
                Color(0xff181717),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.05, 0.4, 0.8])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/logoGreenPure.png', height: 250),
                      SizedBox(height: 20),
                      //Text("GREEN PURE", style: TextStyle(color: Colors.white, fontSize: 30)),
                      _typeWriter(),
                    ],
                  ),
                )),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset('images/loading.gif', height: 50),
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget _typeWriter() {
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
            fontSize: 30.0, fontFamily: 'Raleway', fontWeight: FontWeight.bold),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText('WELCOME',
                    curve: Curves.easeIn, speed: Duration(milliseconds: 250)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
