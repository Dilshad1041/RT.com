import 'package:flutter/material.dart';

class InstitutionFormText extends StatelessWidget {

  final String text;
  final double size;
  final FontWeight fWeigth;
  const InstitutionFormText({
    super.key, required this.text, required this.size, required this.fWeigth,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: size,
        fontFamily: 'Kanit',
        fontWeight: fWeigth,
        height: 0,
      ),
    );
  }
}
