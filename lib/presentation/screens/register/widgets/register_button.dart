import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton(
      {super.key, required this.title, required this.function});

  final String title;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 349,
      height: 81,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 81,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(
                begin: Alignment(0.17, -0.99),
                end: Alignment(-0.17, 0.99),
                colors: [Color(0x890C2439), Color(0xFF0C2439)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.50),
              ),
            ),
            child: ElevatedButton(
              onPressed: function,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Kanit',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
