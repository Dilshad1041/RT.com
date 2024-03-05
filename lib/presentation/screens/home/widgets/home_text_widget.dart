import 'package:flutter/material.dart';

class HomeTextWidget extends StatelessWidget {
  const HomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
    TextSpan(
        children: [
            TextSpan(
                text: 'Welcome to ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 57.41,
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.w400,
                    height: 0,
                ),
            ),
            TextSpan(
                text: 'RT',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 57.41,
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.w600,
                    height: 0,
                ),
            ),
            TextSpan(
                text: '.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 57.41,
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.w400,
                    height: 0,
                ),
            ),
            TextSpan(
                text: 'COM',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 47,
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.w400,
                    height: 0,
                ),
            ),
        ],
    ),
);
  }
}