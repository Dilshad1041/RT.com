import 'package:flutter/material.dart';
import 'package:rt_com/presentation/screens/login/widgets/loggin_button.dart';
import 'package:rt_com/presentation/screens/login/widgets/login_text.dart';
import 'package:rt_com/presentation/screens/login/widgets/login_textfiled.dart';
import 'package:rt_com/presentation/screens/search/search_person_screen.dart';
import 'package:rt_com/utils/constants/image_constant.dart';
import 'package:rt_com/utils/constants/spacer.dart';
// import 'package:rt_com/presentation/screens/login/widgets/login_bottom_text_widget.dart';
// import 'package:rt_com/presentation/screens/login/widgets/login_button_box.dart';
// import 'package:rt_com/presentation/screens/login/widgets/login_image_box.dart';
// import 'package:rt_com/presentation/screens/login/widgets/login_positioned_text_widget.dart';
// import 'package:rt_com/utils/constants/image_constant.dart';
// import 'package:rt_com/utils/constants/spacer.dart';

// class ScreenLogin extends StatelessWidget {
//   const ScreenLogin({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: const BoxDecoration(
//                 image: DecorationImage(image: AssetImage(homeImage))),
//             child: const Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       LoginImageBoxWidget(),
//                       LoginButtonBox(),
//                     ],
//                   ),
//                 ),
//                 spacer10,
//               LoginBottomTextWidget(),
//               ],
//             ),
//           ),
//           const Positioned(
//             top: 20,
//             right: 20,
//             child: LoginPositionedTextWidget(),
//           )
//         ],
//       ),
//     );
//   }
// }

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LoginText(
                      text: 'Welcome',
                      size: 25,
                      fontWeight: FontWeight.w600,
                      text2: 'Back',
                      size2: 25,
                      fontWeight2: FontWeight.w300),
                  spacer10,
                  const LoginText(
                      text: 'Enter your',
                      size: 18,
                      fontWeight: FontWeight.w100,
                      text2: 'Login Details',
                      size2: 18,
                      fontWeight2: FontWeight.w400),
                  spacer20,
                  const LoginTextField(
                    hintText: 'Enter UserName',
                    width: 350,
                  ),
                  spacer20,
                  LoginTextField(
                    hintText: 'Enter Password',
                    width: 350,
                    icon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 575,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forget Password',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF02A3FF)),
                        ),
                      ),
                    ],
                  ),
                  spacer20,
                  LogginButton(
                      name: 'Login',
                      function: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ScreenPerson()));
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
