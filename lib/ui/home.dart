import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bottom_nav_ui/models/qoutes_data_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:widget_mask/widget_mask.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Say say = (sayings..shuffle()).first;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 239, 245),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 350,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
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
                      alignment: Alignment.bottomCenter,
                      // color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 230,
                            height: 50,
                            // decoration: BoxDecoration(
                            //   color: Colors.white.withOpacity(0.2),
                            //   borderRadius: BorderRadius.circular(15),
                            // ),
                            child: AnimatedTextKit(
                              repeatForever: true,
                              // isRepeatingAnimation: true,
                              animatedTexts: [
                                FadeAnimatedText(
                                  'MIND-BENDING',
                                  textStyle: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                FadeAnimatedText(
                                  'ENIGMATIC',
                                  textStyle: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                FadeAnimatedText(
                                  'INHIBATIONS',
                                  textStyle: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                FadeAnimatedText(
                                  'LIFE-CHANGING',
                                  textStyle: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                FadeAnimatedText(
                                  'USEFUL',
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
                              height: 120, width: 120),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 280,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Text(
                'DID YOU KNOW?',
                style: GoogleFonts.fredokaOne(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  color: Color(0xff86A8E7),
                ),
              ),
            ),
            Center(
              child: WidgetMask(
                blendMode: BlendMode.srcATop,
                childSaveLayer: true,
                mask: Image.asset(
                  say.imageUrl,
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter,
                ),
                child: Image.asset(
                  'assets/images/masker.png',
                  height: 300,
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              height: 300,
              width: 350,
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
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Text(
                      say.name,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      '" ${say.sname} "',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                          color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   height: 300,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(say.imageUrl),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            //   child: Container(
            //     child: Column(
            //       children: [
            //         // Lottie.asset('assets/animations/didyouknow.json'),
            //         Center(
            //           child: Container(
            //             color: Color.fromARGB(255, 141, 141, 141),
            //             child: Center(
            //               child: Text.rich(
            //                 TextSpan(
            //                   style: TextStyle(color: Colors.white),
            //                   children: [
            //                     TextSpan(
            //                       text: '${say.name}\n',
            //                       style: TextStyle(
            //                         fontWeight: FontWeight.w400,
            //                         fontSize: 40,
            //                       ),
            //                     ),
            //                     TextSpan(
            //                       text: '-- ${say.sname}',
            //                       style: TextStyle(
            //                         fontStyle: FontStyle.italic,
            //                         fontSize: 20,
            //                       ),
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
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
