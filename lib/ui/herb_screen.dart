import 'package:bottom_nav_ui/models/fragrant_data_model.dart';
import 'package:bottom_nav_ui/models/herb_data_model.dart';
import 'package:bottom_nav_ui/models/herb_model.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

import '../models/herb_model.dart';

class PlantScreen extends StatefulWidget {
  final Destination plant;

  PlantScreen({required this.plant});

  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
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
                  child: Hero(
                    tag: widget.plant.imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: Image(
                        image: AssetImage(widget.plant.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () => Navigator.pop(context),
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
            Row(
              children: <Widget>[
                SizedBox(
                  width: 50,
                ),
                Icon(
                  CommunityMaterialIcons.leaf,
                  size: 25,
                  color: Color(0xffD16BA5),
                ),
                Text(
                  widget.plant.name,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 2),
                ),
              ],
            ),

            // ============================================================
            Expanded(
              child: ListView.builder(
                itemCount: widget.plant.fragrants.length,
                itemBuilder: (BuildContext context, int index) {
                  Activity activity = widget.plant.activities[index];
                  Fragrant fragrant = widget.plant.fragrants[index];
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
                                    activity.name,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Scientific name: \n${activity.sname}',
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

                        // child: Column(
                        //   children: <Widget>[
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: <Widget>[
                        //         Text(activity.name),
                        //         Text(
                        //           '\$${activity.price}',
                        //         ),
                        //       ],
                        //     ),
                        //     Text(activity.type),
                        //     SizedBox(
                        //       height: 10,
                        //     ),
                        //     Row(
                        //       children: <Widget>[
                        //         Container(
                        //           width: 70,
                        //           decoration: BoxDecoration(
                        //             color: Colors.black12,
                        //             borderRadius: BorderRadius.circular(10),
                        //           ),
                        //           child: Text(
                        //             activity.startTimes[0],
                        //           ),
                        //         ),
                        //       ],
                        //     )
                        //   ],
                        // ),
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
