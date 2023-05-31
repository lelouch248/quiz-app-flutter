import 'package:flutter/material.dart';

import 'package:adv_basics/hover.dart';
import 'package:adv_basics/logoimage.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const LogoImage(),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "Learn Flutter the Fun Way!",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 222, 174, 245),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
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
