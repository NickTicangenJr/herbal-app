import 'package:bottom_nav_ui/ui/favourite.dart';
import 'package:bottom_nav_ui/ui/home.dart';
import 'package:bottom_nav_ui/ui/image_scanner.dart';
import 'package:bottom_nav_ui/ui/plant.dart';
import 'package:bottom_nav_ui/ui/settings.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(new MaterialApp(
      home: Landing(),
    ));

class Landing extends StatefulWidget {
  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int index = 0;
  final screens = [Home(), Favourite(), ImageScanner(), Plant(), Settings()];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home_outlined, size: 30),
      Icon(Icons.favorite_outline, size: 30),
      Icon(CommunityMaterialIcons.scan_helper, size: 30),
      Icon(CommunityMaterialIcons.flower_tulip_outline, size: 30),
      Icon(Icons.settings_outlined, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28)),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff5FFBF1),
                    Color(0xff86A8E7),
                    Color(0xffD16BA5)
                  ],
                ))),
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: Text(
          "Herbal Identifier",
          style: TextStyle(fontSize: 33),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Color.fromARGB(255, 92, 92, 92))),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Color(0xff5FFBF1),
          items: items,
          height: 65,
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
