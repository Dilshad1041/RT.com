import 'package:flutter/material.dart';
import 'package:rt_com/presentation/screens/register/widgets/register_bottom_text_widget.dart';
import 'package:rt_com/presentation/screens/register/widgets/register_positioned_text_widget.dart';
import 'package:rt_com/presentation/screens/register/widgets/register_image_box.dart';
import 'package:rt_com/presentation/screens/register/widgets/resgister_button_box.dart';
import 'package:rt_com/utils/constants/image_constant.dart';
import 'package:rt_com/utils/constants/spacer.dart';

class ScreenRegister extends StatelessWidget {
  const ScreenRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(homeImage))),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RegisterImageBoxWidget(),
                      RegisterButtonBox(),
                    ],
                  ),
                ),
                spacer10,
                RegisterBottomTextWidget(),
              ],
            ),
          ),
          const Positioned(
            top: 20,
            right: 20,
            child: RegisterPositionedTextWidget(),
          )
        ],
      ),
    );
  }
}
