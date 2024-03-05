import 'package:flutter/material.dart';
import 'package:rt_com/utils/constants/image_constant.dart';

class RegisterImageBoxWidget extends StatelessWidget {
  const RegisterImageBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 475,
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.00, -1.00),
          end: Alignment(0, 1),
          colors: [
            Color(0x00153C5D),
            Color(0xFF153C5D),
            Color(0xFF153C5D),
            Color(0xFF153C5D)
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(11),
            bottomLeft: Radius.circular(11),
          ),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(11), bottomLeft: Radius.circular(11)),
        child: Image.asset(
          loginImage,
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
