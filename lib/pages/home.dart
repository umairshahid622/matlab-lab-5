import 'dart:math';

import 'package:flutter/material.dart';
import 'package:madlab/pages/questiontwo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, String> data = {
    "1": "assets/dice/dice-1.256x256.png",
    "2": "assets/dice/dice-2.256x256.png",
    "3": "assets/dice/dice-3.256x256.png",
    "4": "assets/dice/dice-4.256x256.png",
    "5": "assets/dice/dice-5.256x256.png",
    "6": "assets/dice/dice-6.256x256.png",
  };

  int random = 0;
  @override
  void initState() {
    super.initState();
    random = Random().nextInt(7 - 1);
  }

  int result = 1 + (Random().nextInt(6 - 1));
  void rollDice() {
    Random rnd = Random();
    result = 1 + rnd.nextInt((data.length + 1) - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "01-135212-097",
        ),
      ),
      body: Column(children: [
        Flexible(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "${data['$result']?.toString()}",
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 33.5)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepPurple),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ))),
                    onPressed: () {
                      setState(() {
                        rollDice();
                      });
                    },
                    child: const Text("Roll Dice"),
                  ),
                ],
              ),
            )),
        Flexible(
            child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 35)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.deepPurple),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuestionTwoPage()));
                },
                child: const Text("Go to question no. 2"),
              ),
            ],
          ),
        )),
      ]),
    );
  }
}
