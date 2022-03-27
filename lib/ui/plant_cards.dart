// import 'dart:html';

// import 'package:bottom_nav_ui/models/insectivorous_data.dart';
import 'package:bottom_nav_ui/ui/fragrant_page.dart';
import 'package:bottom_nav_ui/ui/herb_page.dart';
import 'package:bottom_nav_ui/ui/insectivorous_page.dart';
import 'package:bottom_nav_ui/ui/poisonous_page.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      extendBody: true,
      appBar: AppBar(
        flexibleSpace: Container(
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
        ),
        toolbarHeight: 68,
        backgroundColor: Colors.transparent,
        title: Text(
          "Herbal Identifier",
          style: GoogleFonts.kanit(
              fontSize: 35, fontWeight: FontWeight.w500, letterSpacing: 1),
        ),
        elevation: 10,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(right: 20, top: 20, left: 20, bottom: 100),
          child: Column(
            // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 1, mainAxisSpacing: 30, crossAxisSpacing: 10),
            children: [
              //=======//=======//=======//=======//=======//=======//=======
              Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromARGB(255, 240, 239, 245),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(6, 6),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
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
                                    CommunityMaterialIcons.sprout_outline,
                                    color: Color(0xffD16BA5),
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: Text(
                                      'Herbal',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Text(
                          "A plant or plant component utilized for its aroma, flavor, or medicinal characteristics is known as an herb. One sort of dietary supplement is herbal medicine. Tablets, capsules, powders, teas, extracts, and fresh or dried plants are all available. Herbal remedies are used by people to try to maintain or enhance their health.",
                          style: TextStyle(fontSize: 18),
                          // textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //=======//=======//=======//=======//=======//=======//=======
              Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromARGB(255, 240, 239, 245),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(6, 6),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
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
                                        'assets/fragrant/honeysuckle.jpg'),
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
                                  Image(
                                    image: AssetImage('assets/icons/aroma.png'),
                                    color: Color(0xffD16BA5),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: Text(
                                      'Fragrant',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Text(
                          "A fragrant plant is a plant that has a pleasant scent or aroma like flowers.",
                          style: TextStyle(fontSize: 18),
                          // textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //=======//=======//=======//=======//=======//=======//=======
              Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromARGB(255, 240, 239, 245),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(6, 6),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
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
                                    CommunityMaterialIcons.skull_crossbones,
                                    color: Color(0xffD16BA5),
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: Text(
                                      'Poisonus',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Text(
                          "A poisonous plant is one that, when touched or swallowed in large enough quantities, can cause injury or death to an organism, or any plant that can cause a toxic and/or lethal response.",
                          style: TextStyle(fontSize: 18),
                          // textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //=======//=======//=======//=======//=======//=======//=======
              Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromARGB(255, 240, 239, 245),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(6, 6),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
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
                                    CommunityMaterialIcons.barley,
                                    color: Color(0xffD16BA5),
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: Text(
                                      'Insectivorous',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Text(
                          "Any plant that has evolved to capture and consume insects and other creatures using sophisticated pitfalls and traps is known as a carnivorous plant, sometimes known as an insectivorous plant. Carnivory has developed six times in plants, across a variety of families and orders.",
                          style: TextStyle(fontSize: 18),
                          // textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //=============================
            ],
          ),
        ),
      ),
    );
  }
}
