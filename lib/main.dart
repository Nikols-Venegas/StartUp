
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_pure_/routes/routes.dart';

void main() {
  runApp(GreenPure());
}

class GreenPure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'splashScreen',
    );
  }
}
/*
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Green Pure'),
      ),
      body: Container(
        child: Center(
          child: Text('Hola'),
        ),
      ),
    );
  }
}*/
