import 'dart:ui';

import 'package:bottom_nav_ui/models/grass_data_model.dart';
import 'package:bottom_nav_ui/models/qoutes_data_model.dart';
import 'package:flutter/material.dart';
// import 'dart:math';

class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    final qoutes = [
      'Never give',
      'No retreat no surrender',
      'Mind your own business',
      'No money no honey'
    ];
    // final qoute = (qoutes..shuffle()).first;
    // final Grass grass = (grasses..shuffle()).first;
    final Say say = (sayings..shuffle()).first;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(say.imageUrl),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Center(
            child: Text.rich(TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: '${say.name}\n',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white),
                ),
                TextSpan(
                  text: '-- ${say.sname}',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.white),
                )
              ],
            )
                // '${qoute}',
                // style: TextStyle(
                //   fontSize: 40,
                //   fontWeight: FontWeight.bold,
                // ),
                ),
          ),
        ),
      ),
    );
  }
}
