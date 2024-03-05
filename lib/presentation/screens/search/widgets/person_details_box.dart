import 'package:flutter/material.dart';

class PersonDetailsBox extends StatelessWidget {
  final Widget widget;
  const PersonDetailsBox({
    super.key, required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 100,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(-0.91, -0.42),
          end: const Alignment(0.91, 0.42),
          colors: [
            Colors.white.withOpacity(0.25999999046325684),
            Colors.white.withOpacity(0.25999999046325684)
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x4C000000),
            blurRadius: 50,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: widget
    );
  }
}
