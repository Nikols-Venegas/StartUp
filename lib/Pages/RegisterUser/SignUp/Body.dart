import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_pure_/Constans/constants.dart';
import 'package:green_pure_/Pages/RegisterUser/Components/RoundePasswordField.dart';
import 'package:green_pure_/Pages/RegisterUser/Components/RoundedInputField.dart';
import 'package:green_pure_/Pages/RegisterUser/SignUp/Background.dart';
import 'package:green_pure_/Pages/RegisterUser/SignUp/OrDivider.dart';
import 'package:green_pure_/Pages/RegisterUser/SignUp/SocialIcon.dart';
import 'package:green_pure_/Pages/RegisterUser/Components/Roundedbutton.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset("images/png/signup.png",
              height: size.height * 0.35),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              color: kPrimaryColor, textColor: Colors.white,
            ),
            SizedBox(height: size.height * 0.03),
            Positioned(
                top: 807,
                left: 15,
                child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'loginpage'),
                    child: Text('Iniciar Sesión Ahora', style: TextStyle(color: Colors.green, decoration: TextDecoration.underline)))),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "images/svg/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "images/svg/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "images/svg/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

