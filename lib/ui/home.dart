import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF9F8FD),
          //     gradient: LinearGradient(
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
          //   colors: [Color(0xff5FFBF1), Color(0xff86A8E7), Color(0xffD16BA5)],
          // )
        ),
      ),
    );
  }
}
