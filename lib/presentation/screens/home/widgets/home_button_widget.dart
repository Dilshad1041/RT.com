import 'package:flutter/material.dart';

class HomeButtonWidget extends StatelessWidget {
  const HomeButtonWidget({
    super.key,
    required this.buttonName,
    required this.gradient, required this.color, required this.function,
    
  });
  final Color color;
  final String buttonName;
  final Gradient gradient;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 153,
      height: 36,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 153,
              height: 36,
              decoration: ShapeDecoration(
                gradient: gradient,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50, color: Colors.white),
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
              child: ElevatedButton(
                onPressed: function,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.50, color: Colors.white),
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: Text(
                  buttonName,
                  style: TextStyle(
                    color: color,
                    fontSize: 15.13,
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.w200,
                    height: 0,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
