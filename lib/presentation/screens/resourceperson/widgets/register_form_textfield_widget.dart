import 'package:flutter/material.dart';

class RegisterFormTextField extends StatelessWidget {

  final String hintText;
  final Widget? icon;
  final double? width;
  const RegisterFormTextField({
    super.key, required this.hintText,this.icon, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       //height: 35,
       width: width,
       child: Center(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
             decoration: InputDecoration(
               hintText: hintText,
               filled: true,
               fillColor: Colors.white.withOpacity(0.2),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(40),
                 borderSide: BorderSide.none
               ),
               suffixIcon: icon ,
             ),
           ),
         ),
       ),
     );
  }
}
