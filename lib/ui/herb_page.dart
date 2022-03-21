import 'package:flutter/material.dart';

class HerbPage extends StatefulWidget {
  const HerbPage({Key? key}) : super(key: key);

  @override
  State<HerbPage> createState() => _HerbPageState();
}

class _HerbPageState extends State<HerbPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Herbs"),
        ),
      ),
    );
  }
}
