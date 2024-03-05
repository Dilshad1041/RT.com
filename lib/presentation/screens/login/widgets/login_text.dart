import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final String text2;
  final double size2;
  final FontWeight fontWeight2;
  const LoginText({super.key, required this.text, required this.size, required this.fontWeight, required this.text2, required this.size2, required this.fontWeight2});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text,
            style: TextStyle(
              fontSize: size,
              fontWeight: fontWeight,
              color: Colors.white
            )
          ),
          TextSpan(
            text: text2,
            style: TextStyle(
              fontSize: size2,
              fontWeight: fontWeight2,
              color: Colors.white
            )
          ),
        ]
      )
    );
  }
}