import 'package:flutter/material.dart';

import 'package:adv_basics/hover.dart';
import 'package:adv_basics/logoimage.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const LogoImage(),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              "Learn Flutter the Fun Way!",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HoverButton(
                    onPressed: startQuiz,
                    text: "Start Quiz!",
                  )
                ],
              )),
        ],
      ),
    );
  }
}
