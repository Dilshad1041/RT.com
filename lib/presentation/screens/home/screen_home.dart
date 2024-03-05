import 'package:flutter/material.dart';
import 'package:rt_com/presentation/screens/home/widgets/home_button_widget.dart';
import 'package:rt_com/presentation/screens/home/widgets/home_text_widget.dart';
import 'package:rt_com/presentation/screens/home/widgets/sub_text_widget.dart';
import 'package:rt_com/presentation/screens/login/screen_login.dart';
import 'package:rt_com/presentation/screens/register/screen_register.dart';
import 'package:rt_com/utils/constants/image_constant.dart';
import 'package:rt_com/utils/constants/spacer.dart';
import 'package:rt_com/utils/constants/themes.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(homeImage),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const HomeTextWidget(),
                const SubTextWidget(),
                spacer20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeButtonWidget(
                      buttonName: 'Register As',
                      gradient: gradient,
                      color: Colors.white,
                      function: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ScreenRegister()));
                      },
                    ),
                    spacer10,
                    HomeButtonWidget(
                      buttonName: 'Login As',
                      gradient: gradient2,
                      color: const Color(0xFF0C2439),
                      function: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ScreenLogin()));
                      },
                    )
                  ],
                )
              ],
            ),
          ),
          const Positioned(
            top: 20,
            right: 20,
            child: Text(
              'About ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.71,
                fontFamily: 'Kanit',
                fontWeight: FontWeight.w300,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
