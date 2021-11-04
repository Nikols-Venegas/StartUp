import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_pure_/Constans/constants.dart';
import 'package:green_pure_/Pages/RegisterUser/Login/Background.dart';
import 'package:green_pure_/Pages/RegisterUser/Components/RoundePasswordField.dart';
import 'package:green_pure_/Pages/RegisterUser/Components/RoundedInputField.dart';
import 'package:green_pure_/Pages/RegisterUser/Components/Roundedbutton.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset("images/png/login.png", height: size.height * 0.35),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
                icon: Icons.person),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              color: kPrimaryColor,
              textColor: Colors.white,
            ),
            SizedBox(height: size.height * 0.03),
            Positioned(
                top: 807,
                left: 15,
                child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'signuppage'),
                    child: Text('Registrarse Ahora',
                        style: TextStyle(
                            color: Colors.green,
                            decoration: TextDecoration.underline)))),
          ],
        ),
      ),
    );
  }
}
