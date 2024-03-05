import 'package:flutter/material.dart';
import 'package:rt_com/presentation/screens/resourceperson/widgets/register_form_textfield_widget.dart';
import 'package:rt_com/presentation/screens/resourceperson/widgets/resource_form_button_widget.dart';
import 'package:rt_com/presentation/screens/resourceperson/widgets/resource_form_text_widget.dart';
import 'package:rt_com/utils/constants/image_constant.dart';
import 'package:rt_com/utils/constants/spacer.dart';

class ResourcePerson extends StatelessWidget {
  const ResourcePerson({super.key});

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
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 700,
                height: 500,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0x5E183D5B),
                      Colors.white.withOpacity(0.25)
                    ],
                    begin: const Alignment(-0.91, -0.42),
                    end: const Alignment(0.91, 0.42),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 25,
                        ),
                        spacer10,
                        ResourceFormText(
                            text: 'Resource Person',
                            size: 25,
                            fWeigth: FontWeight.w400)
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RegisterFormTextField(
                          hintText: 'Name',
                          width: 350,
                        ),
                        RegisterFormTextField(
                            hintText: 'Login user name', width: 350)
                      ],
                    ),
                    RegisterFormTextField(
                      hintText: 'Password',
                      width: 350,
                      icon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.visibility)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RegisterFormTextField(
                          hintText: 'Email',
                          width: 450,
                          icon: ResourceFormButton(
                            name: 'Send OTP',
                            function: () {},
                          ),
                        ),
                        RegisterFormTextField(
                          hintText: 'OTP',
                          width: 350,
                          icon: ResourceFormButton(
                              name: 'Verify', function: () {}),
                        )
                      ],
                    ),
                    const ResourceFormText(
                      text: 'Region or Location',
                      size: 25,
                      fWeigth: FontWeight.w400,
                    ),
                    const ResourceFormText(
                        text: 'Country', size: 14, fWeigth: FontWeight.w100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const RegisterFormTextField(
                          hintText: 'india',
                          width: 350,
                          icon: Icon(Icons.arrow_drop_down),
                        ),
                        RegisterFormTextField(
                          hintText: 'Verify Captcha',
                          width: 350,
                          icon: ResourceFormButton(
                              name: 'Verify', function: () {}),
                        )
                      ],
                    ),
                    spacer20,
                    Center(
                        child: ResourceFormButton(
                            name: 'You are In', function: () {}))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
