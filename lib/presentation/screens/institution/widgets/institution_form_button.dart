import 'package:flutter/material.dart';

class InstitutionFormButton extends StatelessWidget {
  final String name;
  final Function() function;
  const InstitutionFormButton({super.key, required this.name, required this.function});

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
      ), child: Text(name,style: const TextStyle(
        //fontSize: 10,
        color: Colors.black
      ),),),
    );
  }
}