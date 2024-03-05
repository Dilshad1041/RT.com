import 'package:flutter/material.dart';

class RegisterBottomTextWidget extends StatelessWidget {
  const RegisterBottomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
                        'This is the right place',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.w200,
                          height: 0,
                          letterSpacing: 10,
                        ),
                      );
  }
}