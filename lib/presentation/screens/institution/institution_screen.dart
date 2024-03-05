import 'package:flutter/material.dart';
import 'package:rt_com/presentation/screens/institution/widgets/institution_form_button.dart';
import 'package:rt_com/presentation/screens/institution/widgets/institution_form_text.dart';
import 'package:rt_com/presentation/screens/institution/widgets/institution_form_textfield.dart';
import 'package:rt_com/utils/constants/image_constant.dart';
import 'package:rt_com/utils/constants/spacer.dart';

class Institution extends StatelessWidget {
  const Institution({super.key});

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
                        InstitutionFormText(
                          text: 'Institution',
                          size: 25,
                          fWeigth: FontWeight.w400,
                        )
                      ],
                    ),
                    const InstitutionFormTextField(
                      hintText: 'Institution Name',
                      width: 900,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const InstitutionFormTextField(
                          hintText: 'Login user Name',
                          width: 350,
                        ),
                        InstitutionFormTextField(
                          hintText: 'Password',
                          width: 350,
                          icon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InstitutionFormTextField(
                          hintText: 'Institution Email',
                          width: 450,
                          icon: InstitutionFormButton(
                            name: 'Send OTP',
                            function: () {},
                          ),
                        ),
                        InstitutionFormTextField(
                          hintText: 'OTP',
                          width: 350,
                          icon: InstitutionFormButton(
                              name: 'Verify', function: () {}),
                        )
                      ],
                    ),
                    const InstitutionFormText(
                      text: 'Region or Location',
                      size: 25,
                      fWeigth: FontWeight.w400,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const InstitutionFormTextField(
                          hintText: 'india',
                          width: 350,
                          icon: Icon(Icons.arrow_drop_down),
                        ),
                        InstitutionFormTextField(
                          hintText: 'Verify Captcha',
                          width: 350,
                          icon: InstitutionFormButton(
                              name: 'Verify', function: () {}),
                        )
                      ],
                    ),
                    spacer20,
                    Center(
                        child: InstitutionFormButton(
                            name: 'Signup', function: () {}))
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
