import 'package:flutter/material.dart';
import 'package:madlab/pages/tabs/education.dart';
import 'package:madlab/pages/tabs/hobbies.dart';
import 'package:madlab/pages/tabs/introduction.dart';

class QuestionTwoPage extends StatefulWidget {
  const QuestionTwoPage({super.key});

  @override
  State<QuestionTwoPage> createState() => _QuestionTwoPageState();
}

class _QuestionTwoPageState extends State<QuestionTwoPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text("Question 2"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.lightbulb),
                text: "Introduction",
              ),
              Tab(
                icon: Icon(Icons.school),
                text: "Education",
              ),
              Tab(
                icon: Icon(Icons.sports_football),
                text: "Hobbies",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [IntroductionPage(), EducationPage(), HobbiesPage()],
        ),
      ),
    );
  }
}
