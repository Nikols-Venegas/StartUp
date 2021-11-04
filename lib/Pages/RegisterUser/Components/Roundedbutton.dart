import 'package:flutter/material.dart';
import 'package:green_pure_/Pages/ControlPanel/controlPanel.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );},
          child: Text(text, style: TextStyle(color: textColor)),
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              backgroundColor: color),
        ),
      ),
    );
  }
}
