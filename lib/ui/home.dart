import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 239, 245),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              child: Lottie.asset('assets/animations/data.json'),
            ),
            SizedBox(
              height: 70,
              width: 350,
              child: AnimatedTextKit(
                repeatForever: true,
                // isRepeatingAnimation: true,
                animatedTexts: [
                  RotateAnimatedText(
                    'HERBS',
                    textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff86A8E7),
                    ),
                  ),
                  RotateAnimatedText(
                    'FRAGRANT FLOWERS',
                    textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff86A8E7),
                    ),
                  ),
                  RotateAnimatedText(
                    'POISONOUS PLANT',
                    textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff86A8E7),
                    ),
                  ),
                  RotateAnimatedText(
                    'INSECTIVOROUS',
                    textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff86A8E7),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     color: Color.fromARGB(255, 240, 239, 245),
      //     //     gradient: LinearGradient(
      //     //   begin: Alignment.topRight,
      //     //   end: Alignment.bottomLeft,
      //     //   colors: [Color(0xff5FFBF1), Color(0xff86A8E7), Color(0xffD16BA5)],
      //     // )
      //   ),
      // ),
    );
  }
}
