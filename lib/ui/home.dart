import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 239, 245),
      body: Column(
        children: [
          ClipPath(
            clipper: myClipper(),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff5FFBF1),
                    Color(0xff86A8E7),
                    Color(0xffD16BA5),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      "Herbal Identifier",
                      style: GoogleFonts.kanit(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 220,
                          child: AnimatedTextKit(
                            repeatForever: true,
                            // isRepeatingAnimation: true,
                            animatedTexts: [
                              FadeAnimatedText(
                                'HERBS',
                                textStyle: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              FadeAnimatedText(
                                'FRAGRANT',
                                textStyle: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              FadeAnimatedText(
                                'POISONOUS',
                                textStyle: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              FadeAnimatedText(
                                'INSECTIVOROUS',
                                textStyle: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              FadeAnimatedText(
                                'GRASS',
                                textStyle: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Lottie.asset('assets/animations/data.json',
                            height: 150, width: 150),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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

class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 50);
    var controlPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
