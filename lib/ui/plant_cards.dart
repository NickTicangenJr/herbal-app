// import 'dart:html';

import 'package:bottom_nav_ui/models/insectivorous_data.dart';
import 'package:bottom_nav_ui/ui/fragrant_page.dart';
import 'package:bottom_nav_ui/ui/herb_page.dart';
import 'package:bottom_nav_ui/ui/insectivorous_page.dart';
import 'package:bottom_nav_ui/ui/poisonous_page.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
// import 'package:divine_card/divine_card.dart';
// import 'package:slimy_card/slimy_card.dart';

class PlantCards extends StatefulWidget {
  const PlantCards({Key? key}) : super(key: key);

  @override
  State<PlantCards> createState() => _PlantCardsState();
}

class _PlantCardsState extends State<PlantCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Color.fromARGB(255, 240, 239, 245),
        // height: 400,
        // margin: EdgeInsets.only(top: 25),
        // color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisSpacing: 30, crossAxisSpacing: 10),
            children: [
              //=======//=======//=======//=======//=======//=======//=======
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        // color: Colors.black,
                        child: Stack(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HerbPage()));
                              },
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  child: Image(
                                    image: AssetImage('assets/images/herb.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    CommunityMaterialIcons.flower_poppy,
                                    color: Color(0xffD16BA5),
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Herbal',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(fontSize: 15),
                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              //=======//=======//=======//=======//=======//=======//=======
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        // color: Colors.black,
                        child: Stack(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        FragrantPage()));
                              },
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/fragrant.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    CommunityMaterialIcons.flower_poppy,
                                    color: Color(0xffD16BA5),
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Fragrant',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(fontSize: 15),
                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),

              //=======//=======//=======//=======//=======//=======//=======
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        // color: Colors.black,
                        child: Stack(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        PoisonousPage()));
                              },
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/cerbera.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    CommunityMaterialIcons.flower_poppy,
                                    color: Color(0xffD16BA5),
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Poisonus',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(fontSize: 15),
                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              //=======//=======//=======//=======//=======//=======//=======
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        // color: Colors.black,
                        child: Stack(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        InsectivorousPage()));
                              },
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/tropical_pitcher.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    CommunityMaterialIcons.flower_poppy,
                                    color: Color(0xffD16BA5),
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Insectivorous',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(fontSize: 15),
                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
              //=============================
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        // color: Colors.black,
                        child: Stack(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        InsectivorousPage()));
                              },
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/cyndon.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    CommunityMaterialIcons.flower_poppy,
                                    color: Color(0xffD16BA5),
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Grass',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 2),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(fontSize: 15),
                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
