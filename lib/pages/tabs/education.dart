import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education\n',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text.rich(TextSpan(children: <InlineSpan>[
            TextSpan(
              text: 'Bahria University Islamabad\n',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "Bachelor's in Information Technology\n",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "Oct 2021 - Present",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ])),
          SizedBox(
            height: 10,
          ),
          Text.rich(TextSpan(children: <InlineSpan>[
            TextSpan(
              text: 'Government Gordon College Rawalpindi\n',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "FSC ICS (Physics, Computer, Mathematics)\n",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "2019 - 2020",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ])),
          SizedBox(
            height: 10,
          ),
          Text.rich(TextSpan(children: <InlineSpan>[
            TextSpan(
              text: 'A.S.F Public School, Islamabad\n',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "Matriculation (SSC) - FBISE - Computer Science\n",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "2017 - 2018",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ])),
        ],
      ),
    );
  }
}
