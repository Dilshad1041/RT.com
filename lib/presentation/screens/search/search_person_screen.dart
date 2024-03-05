import 'package:flutter/material.dart';
import 'package:rt_com/presentation/screens/institution/widgets/institution_form_text.dart';
import 'package:rt_com/presentation/screens/search/widgets/person_details.dart';
import 'package:rt_com/presentation/screens/search/widgets/person_search_button.dart';
import 'package:rt_com/presentation/screens/search/widgets/person_search_widget.dart';
import 'package:rt_com/utils/constants/image_constant.dart';
import 'package:rt_com/utils/constants/spacer.dart';

class ScreenPerson extends StatelessWidget {
  const ScreenPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(homeImage),
        )),
        child: ListView(
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
                  text: 'Search the Expert',
                  size: 25,
                  fWeigth: FontWeight.w400,
                )
              ],
            ),
            SearchTextField(
              hintText: 'Enter the key here',
              width: 1000,
              icon: SearchButton(
                  widget: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  function: () {}),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => const PersonList(),
                itemCount: 10,
                separatorBuilder: (context, index) => spacer30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
