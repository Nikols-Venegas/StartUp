import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:green_pure_/Constans/constants.dart';
import 'package:green_pure_/Pages/RegisterUser/Welcome/Background.dart';
import 'package:green_pure_/Pages/RegisterUser/Components/Roundedbutton.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("WELCOME TO GREENPURE",
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "images/svg/chat.svg",
            placeholderBuilder: (context) => CircularProgressIndicator(),
            height: 300.0,
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: "LOGIN",
            color: kPrimaryColor,
            textColor: Colors.white,
          ),
          RoundedButton(
            text: "REGISTER",
            color: kPrimaryLightColor,
            textColor: Colors.black,
          )
        ],
      ),
    ));
  }
}

