import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final Widget widget;
  final Function() function;
  const SearchButton({super.key, required this.widget, required this.function});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 105,
      child: ElevatedButton(onPressed:function,style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        ),
        backgroundColor: Colors.white
      ), child: widget),
    );
  }
}