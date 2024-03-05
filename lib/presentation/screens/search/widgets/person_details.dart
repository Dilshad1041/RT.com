import 'package:flutter/material.dart';
import 'package:rt_com/presentation/screens/search/widgets/person_details_box.dart';
import 'package:rt_com/utils/constants/image_constant.dart';

class PersonList extends StatelessWidget {
  const PersonList({super.key});

  @override
  Widget build(BuildContext context) {
    return PersonDetailsBox(
      widget: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListTile(
                title: const Text('Stuward Henry'),
                subtitle: const Text(
                    'He is one of the most famous psychology professor.\nHave so many research works'),
                leading: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    personImage,
                  ),
                ),
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: Colors.white),
                  child: const Text(
                    'Know',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            Row(
              children: const [
                Text('⭐️⭐️⭐️⭐️⭐️'),
                SizedBox(
                  width: 5,
                ),
                Text('Location : Paris')
              ],
            )
          ],
        ),
      ),
    );
  }
}
