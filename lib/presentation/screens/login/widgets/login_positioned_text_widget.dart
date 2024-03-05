
import 'package:flutter/material.dart';

class LoginPositionedTextWidget extends StatelessWidget {
  const LoginPositionedTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'About ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.71,
              fontFamily: 'Kanit',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
          TextSpan(
            text: 'RT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.71,
              fontFamily: 'Kanit',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          TextSpan(
            text: '.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.71,
              fontFamily: 'Kanit',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
          TextSpan(
            text: 'COM',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Kanit',
              fontWeight: FontWeight.w300,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}