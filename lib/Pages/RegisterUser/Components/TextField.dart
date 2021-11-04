import 'package:flutter/material.dart';
import 'package:green_pure_/Constans/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Color(0xFFD8FFDC),
        borderRadius: BorderRadius.circular(29),
        border: Border.all(color: Colors.green)
      ),
      child: child,
    );
  }
}