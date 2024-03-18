import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Introduction\n',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          BulletedList(
            style: TextStyle(fontSize: 18),
            listItems: [
              "Skilled developer with a strong understanding of Flutter, Angular and reactjs/Nextjs",
              "Proven ability to build and maintain high-quality web and mobile applications.",
              "Excellent problem-solving and debugging skills.",
              "Highly motivated and eager to learn new technologies.",
              "Having knowledge about writing REST APIs in Node ExpressJs/NestJS.",
              "Knowledge of database technologies, such as Oracle, PostgreSQL, and MongoDB."
            ],
          ),
        ],
      ),
    );
  }
}
