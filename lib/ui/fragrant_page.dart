import 'package:bottom_nav_ui/models/fragrant_data_model.dart';
import 'package:bottom_nav_ui/ui/plant_cards.dart';
import 'package:flutter/material.dart';

class FragrantPage extends StatefulWidget {
  const FragrantPage({Key? key}) : super(key: key);

  @override
  State<FragrantPage> createState() => _FragrantPageState();
}

class _FragrantPageState extends State<FragrantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 240, 239, 245),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/fragrant.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => const PlantCards()));
                        },
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
            // ============================================================
            SizedBox(
              height: 30,
            ),
            // Row(
            //   children: <Widget>[
            //     SizedBox(
            //       width: 50,
            //     ),
            //     Icon(
            //       CommunityMaterialIcons.leaf,
            //       size: 25,
            //       color: Color(0xffD16BA5),
            //     ),
            //     Text(
            //       widget.activi.name,
            //       style: TextStyle(
            //           fontSize: 35,
            //           fontWeight: FontWeight.w300,
            //           letterSpacing: 2),
            //     ),
            //   ],
            // ),

            // ============================================================
            Expanded(
              child: ListView.builder(
                itemCount: fragrants.length,
                itemBuilder: (BuildContext context, int index) {
                  Fragrant fragrant = fragrants[index];
                  // Fragrant fragrant = widget.plant.fragrants[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image(
                                        image: AssetImage(
                                          fragrant.imageUrl,
                                        ),
                                        fit: BoxFit.cover,
                                        height: 120,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    fragrant.name,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Scientific name: \n${fragrant.sname}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
