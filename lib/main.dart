import 'package:bottom_nav_ui/ui/about_page.dart';
import 'package:bottom_nav_ui/ui/favourite.dart';
import 'package:bottom_nav_ui/ui/home.dart';
import 'package:bottom_nav_ui/ui/image_scanner.dart';
import 'package:bottom_nav_ui/ui/plant_cards.dart';
import 'package:bottom_nav_ui/ui/settings.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Landing(),
    ));

class Landing extends StatefulWidget {
  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int index = 0;
  final screens = [
    Home(),
    // Favourite(),
    ImageScanner(),
    PlantCards(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home_outlined, size: 30),
      // Icon(Icons.favorite_outline, size: 30),
      Icon(CommunityMaterialIcons.scan_helper, size: 30),
      Icon(CommunityMaterialIcons.flower_tulip_outline, size: 30),
      Icon(CommunityMaterialIcons.cog_outline, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      // appBar: AppBar(
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //         begin: Alignment.topRight,
      //         end: Alignment.bottomLeft,
      //         colors: [
      //           Color(0xff5FFBF1),
      //           Color(0xff86A8E7),
      //           Color(0xffD16BA5),
      //         ],
      //       ),
      //     ),
      //   ),
      //   toolbarHeight: 68,
      //   backgroundColor: Colors.transparent,
      //   title: Text(
      //     "Herbal Identifier",
      //     style: GoogleFonts.kanit(
      //         fontSize: 35, fontWeight: FontWeight.w500, letterSpacing: 1),
      //   ),
      //   elevation: 10,
      //   centerTitle: true,
      // ),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Color.fromARGB(255, 92, 92, 92))),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Color(0xff5FFBF1),
          items: items,
          height: 45,
          animationDuration: Duration(milliseconds: 300),
          index: index,
          onTap: (index) => setState(
            () => this.index = index,
          ),
        ),
      ),
    );
  }
}
