import 'package:flutter/material.dart';
import 'package:rt_com/presentation/screens/institution/institution_screen.dart';
import 'package:rt_com/presentation/screens/register/widgets/register_button.dart';
import 'package:rt_com/presentation/screens/resourceperson/resource_person_screen.dart';
import 'package:rt_com/utils/constants/image_constant.dart';

class RegisterButtonBox extends StatelessWidget {
  const RegisterButtonBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 475,
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.20000000298023224),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(11),
            bottomRight: Radius.circular(11),
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'REGISTER',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: 'Kanit',
              fontWeight: FontWeight.w300,
              height: 0,
              letterSpacing: 5.25,
            ),
          ),
          //HomeButtonWidget(buttonName: 'Register', gradient: gradient, color:Colors.white),
          RegisterButton(title: 'Register Person', function: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ResourcePerson()));
          }),
          RegisterButton(title: 'Institution', function: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Institution()));
          }),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                height: 1,
                color: Colors.white,
                thickness: 1, // Set the thickness (width) of the divider
              ),
              Text(
                'or login with',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Kanit',
                  fontWeight: FontWeight.w200,
                  height: 0,
                ),
              ),
              Divider(
                height: 1,
                color: Colors.white,
                thickness: 1, // Set the thickness (width) of the divider
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // IconButton(
              //     onPressed: () {},
              //     icon: const Icon(
              //       Icons.g_translate,
              //       size: 40,
              //       color: Colors.white,
              //     )),
              GestureDetector(child: Image.asset(iconImageGoogle,height:35,width: 35,)),
              const SizedBox(
                width: 50,
              ),
             GestureDetector(child: const Icon(Icons.facebook,size: 40,color: Colors.white,))
            ],
          )
        ],
      ),
    );
  }
}
