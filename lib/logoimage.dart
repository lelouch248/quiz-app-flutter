import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 150,
      ),

      child: Image.asset('assets/images/quiz-logo.png',
          width: 300,
          height: 250,
          color: const Color.fromARGB(121, 255, 255, 255)),
      // Opacity(
      //   opacity: 0.25,
      //   child:
      //       Image.asset('assets/images/quiz-logo.png', width: 300, height: 250),
      // ),
    );
  }
}
