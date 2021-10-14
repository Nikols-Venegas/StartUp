import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_pure_/Widgets/HeaderLogin.dart';

class RegisterFivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff284855),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            HeaderLoginFive(),
            Positioned(
                top: 70,
                left: 20,
                child: Text('Registrar una',
                    style: GoogleFonts.getFont('Roboto',
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold))),
            Positioned(
                top: 120,
                left: 20,
                child: Text('Cuenta',
                    style: GoogleFonts.getFont('Roboto',
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold))),
            BottomRegisterFive(),
            Positioned(
                top: 250,
                child:
                    _TextFieldCustom(label: 'Nombre completo', isPass: false)),
            Positioned(
                top: 320,
                child: _TextFieldCustom(
                    label: 'Correo Electrónico', isPass: false)),
            Positioned(
                top: 390,
                child: _TextFieldCustom(label: 'Contraseña', isPass: true)),
            Positioned(
                top: 460,
                child: _TextFieldCustom(
                    label: 'Confirmar Contraseña', isPass: true)),
            Positioned(
                top: 660,
                left: 32,
                child: TextButton(
                    onPressed: () {},
                    child: Text('Registrarse',
                        style: GoogleFonts.getFont('Roboto',
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)))),
            Positioned(
                top: 550,
                left: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Switch(
                          inactiveTrackColor: Colors.grey,
                          value: false,
                          onChanged: (value) {}),
                      Text('Al crear esta cuenta usted acepta nuestros',
                          style: GoogleFonts.getFont('Roboto',
                              color: Colors.white, fontSize: 15)),
                    ]),
                  ],
                )),
            Positioned(
                top: 580,
                left: 75,
                child: Text('Términos y Condiciones',
                    style: GoogleFonts.getFont('Roboto',
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold))),
            Positioned(
                top: 807,
                left: 15,
                child: Row(
                  children: [
                    Text('¿Ya tiene un cuenta? ',
                        style: GoogleFonts.getFont('Roboto',
                            color: Colors.white, fontSize: 17)),
                    GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, 'login'),
                        child: Text('Iniciar Sesión Ahora',
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
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white))),
        ),
      ),
    );
  }
}
