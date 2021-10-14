import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_pure_/Widgets/HeaderLogin.dart';

class Login extends StatefulWidget {
  @override
  _Principal createState() => _Principal();
}

class _Principal extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            HeaderLoginFive(),
            Positioned(
                top: 80,
                left: 40,
                child: Text('Inicio de sesión',
                    style: GoogleFonts.getFont('Roboto',
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold))),
            /*Positioned(
                top: 120,
                left: 20,
                child: Text('Green Pure',
                    style: GoogleFonts.getFont('Roboto',
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold))),*/
            BottomLoginFive(),
            Positioned(
                top: 290,
                child: _TextFieldCustom(
                    label: 'Correo Electrónico', isPass: false)),
            Positioned(
                top: 360,
                child: _TextFieldCustom(label: 'Contraseña', isPass: true)),
            Positioned(
                top: 480,
                left: 15,
                child: Text('¿Olvidaste tú contraseña?',
                    style: GoogleFonts.getFont('Roboto',
                        color: Colors.grey, fontSize: 16))),
            Positioned(
                top: 440,
                left: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Switch(
                          inactiveTrackColor: Colors.grey,
                          value: false,
                          onChanged: (value) {}),
                      Text('Recuerdame',
                          style: GoogleFonts.getFont('Roboto',
                              color: Colors.grey, fontSize: 15)),
                    ]),
                  ],
                )),
            Positioned(
                top: 535,
                left: 25,
                child: TextButton(
                    onPressed: () =>
                            Navigator.pushNamed(context, 'controlPanel'),
                    child: Center(
                        child: Text('Iniciar Sesión',
                            style: GoogleFonts.getFont('Roboto',
                                color: Colors.green,
                                fontSize: 30,
                                fontWeight: FontWeight.bold))))),
            Positioned(
                top: 650,
                left: 190,
                child: Center(
                    child: Text('O',
                        style: GoogleFonts.getFont('Inter',
                            color: Colors.white, fontSize: 15)))),
            Positioned(
                top: 675,
                left: 150,
                child: Text('Ingresa con',
                    style: GoogleFonts.getFont('Inter',
                        color: Colors.white, fontSize: 15))),
            Positioned(
                top: 705,
                left: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.google, color: Colors.white),
                    SizedBox(width: 10),
                    Container(width: 2, color: Colors.white, height: 20),
                    SizedBox(width: 10),
                    Icon(FontAwesomeIcons.microsoft, color: Colors.white),
                  ],
                )),
            Positioned(
                top: 770,
                left: 100,
                child: Column(
                  children: [
                    Text('¿Aún no te has registrado? ',
                        style: GoogleFonts.getFont('Roboto',
                            color: Colors.white, fontSize: 17)),
                    GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, 'register'),
                        child: Text('  Registrarse ahora',
                            style: GoogleFonts.getFont('Roboto',
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold)))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class _TextFieldCustom extends StatelessWidget {
  final String label;
  final bool isPass;

  const _TextFieldCustom({required this.label, required this.isPass});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        child: TextField(
          obscureText: isPass,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(color: Colors.grey[700]),
              border: OutlineInputBorder(),
              hintText: label,
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green))),
        ),
        /*TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Username",
                labelText: "Login",
              ),
            )*/
      ),
    );
  }
}
