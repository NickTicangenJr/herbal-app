import 'package:bottom_nav_ui/ui/settings.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  // final double = height = 280.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // SizedBox(
                //   height: 100,
                // ),

                buildcoverImage(),
                Positioned(
                  top: 280 - 144 / 2,
                  child: buildprofileImage(),
                ),
                Positioned(
                  top: 48,
                  left: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop(
                          MaterialPageRoute(builder: (context) => Settings()));
                    },
                    icon: Icon(Icons.arrow_back),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                ),
                // Container(
                //   child: Text(
                //     'About',
                //     style: TextStyle(fontSize: 50),
                //   ),
                // )
              ],
            ),
            Container(
              margin:
                  EdgeInsets.only(right: 20, top: 100, left: 20, bottom: 20),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Text(
                    'About',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Text(
                      'This application uploaded a total number of 15 thousand images of data set in order to reach 60% of accuracy. It is a machine learning application where thousands of data are analysed. Our goal is to provide support and information with best user experience you can ever get. With our pleasing UI, and interactive display of information, you will definitely enjoy browsing our application.',
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://github.com/NickTicangenJr'),
                    builder: (context, followLink) => GestureDetector(
                      onTap: followLink,
                      // onTap: () async {
                      //   final url =
                      //       "https://github.com/NickTicangenJr/herbal-app";
                      //   if (await canLaunch(url)) {
                      //     await launch(url);
                      //   }
                      // },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CommunityMaterialIcons.github),
                            Text('Made with  💗\n©NickTicangenJr'),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildcoverImage() => Container(
      color: Colors.grey,
      child: Image(
        image: AssetImage(
          'assets/images/florian.jpg',
        ),
        width: double.infinity,
        height: 280,
        fit: BoxFit.cover,
      ),
    );

Widget buildprofileImage() => CircleAvatar(
      radius: 144 / 2,
      backgroundColor: Colors.white,
      backgroundImage: AssetImage('assets/icons/iict.png'),
    );
