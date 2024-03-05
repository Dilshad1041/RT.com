import 'package:flutter/material.dart';
import 'package:rt_com/presentation/screens/home/screen_home.dart';


void main() {
  runApp(const RTApp());
  
}

class RTApp extends StatelessWidget {
  const RTApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenHome(),
    );
  }
}
