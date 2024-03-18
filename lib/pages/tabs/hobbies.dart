import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

class HobbiesPage extends StatelessWidget {
  const HobbiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hobbies\n',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          BulletedList(
            style: TextStyle(fontSize: 18),
            listItems: ["Biking", "Gaming", "Cricket", "Badminton"],
          ),
        ],
      ),
    );
  }
}
