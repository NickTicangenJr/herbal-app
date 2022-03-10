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
        backgroundColor: Color.fromARGB(255, 56, 160, 153),
        title: Text("Herbal Identifier"),
        elevation: 0,
        centerTitle: true,
      ),
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: items,
        height: 60,
        animationDuration: Duration(milliseconds: 300),
        index: index,
        onTap: (index) => setState(
          () => this.index = index,
        ),
      ),
    );
  }
}
