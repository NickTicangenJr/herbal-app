import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(255, 240, 239, 245),
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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CustomLicense(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 239, 245),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    //Bottom
                    BoxShadow(
                      color: Color(0xff86A8E7),
                      offset: Offset(6, 6),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    //Top
                    BoxShadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      offset: Offset(-6, -6),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.settings),
                      Text(
                        'Settings',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(CommunityMaterialIcons.chevron_right),
                    ],
                  ),
                ),
              ),
            ),
            //========================================================================
            GestureDetector(
              onTap: () {
                Share.share(
                    'https://play.google.com/store/apps/details?id=com.example.bottom_nav_ui');
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 239, 245),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    //Bottom
                    BoxShadow(
                      color: Color(0xff86A8E7),
                      offset: Offset(6, 6),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    //Top
                    BoxShadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      offset: Offset(-6, -6),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(CommunityMaterialIcons.share),
                      Text(
                        'Share',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(CommunityMaterialIcons.chevron_right),
                    ],
                  ),
                ),
              ),
            ),
            //========================================================================
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CustomLicense(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 239, 245),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    //Bottom
                    BoxShadow(
                      color: Color(0xff86A8E7),
                      offset: Offset(6, 6),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    //Top
                    BoxShadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      offset: Offset(-6, -6),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(CommunityMaterialIcons.license),
                      Text(
                        'Licenses',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(CommunityMaterialIcons.chevron_right),
                    ],
                  ),
                ),
              ),
            ),
            //========================================================================
          ],
        ),
      ),
    );
  }
}

class CustomLicense extends StatefulWidget {
  const CustomLicense({Key? key}) : super(key: key);

  @override
  State<CustomLicense> createState() => _CustomLicenseState();
}

class _CustomLicenseState extends State<CustomLicense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LicensePage(
          applicationName: 'Herbs Identifier',
          applicationIcon: Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/icons/ic_icon.png',
              width: 58,
            ),
          ),
          applicationVersion: '0.0.1',
        ),
      ),
    );
  }
}
