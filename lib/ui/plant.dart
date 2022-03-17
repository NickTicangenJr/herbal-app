import 'package:bottom_nav_ui/ui/plant_screen.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:list_view_test/models/destination_model.dart';
import 'package:bottom_nav_ui/models/plant_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_travel_ui/models/destination_model.dart';
// import 'package:flutter_travel_ui/screens/destination_screen.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Plant extends StatelessWidget {
  const Plant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 240, 239, 245),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Plants",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     print("See all");
                //   },
                //   child: Text("See all",
                //       style: TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w600,
                //           color: Color(
                //             0xFF3EBACE,
                //           ))),
                // ),
              ],
            ),
          ),
          Container(
              height: 300,
              // color: Colors.blue,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: plants.length,
                  itemBuilder: (BuildContext context, int index) {
                    Destination plant = plants[index];
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PlantScreen(plant: plant),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 210,
                        // color: Color.fromARGB(255, 240, 239, 245),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Positioned(
                              bottom: 15,
                              child: Container(
                                height: 120,
                                width: 220,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Icon(
                                            CommunityMaterialIcons
                                                .fruit_grapes_outline,
                                            size: 25,
                                            color: Color(0xffD16BA5),
                                          ),
                                          Text(
                                            plant.name,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        plant.description,
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0.0, 2.0),
                                      blurRadius: 6.0)
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Hero(
                                    tag: plant.imageUrl,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image(
                                        height: 180,
                                        width: 220,
                                        image: AssetImage(plant.imageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  // Positioned(
                                  //   left: 10,
                                  //   bottom: 10,
                                  //   child: Column(
                                  //     crossAxisAlignment:
                                  //         CrossAxisAlignment.start,
                                  //     // children: <Widget>[
                                  //     //   // Text(
                                  //     //   //   destination.city,
                                  //     //   //   style: TextStyle(
                                  //     //   //       fontSize: 24,
                                  //     //   //       color: Colors.white,
                                  //     //   //       fontWeight: FontWeight.w600,
                                  //     //   //       letterSpacing: 1.2),
                                  //     //   // ),
                                  //     //   SizedBox(
                                  //     //     height: 5,
                                  //     //   ),
                                  //     //   Row(
                                  //     //     children: [
                                  //     //       Icon(
                                  //     //         CommunityMaterialIcons
                                  //     //             .fruit_grapes_outline,
                                  //     //         size: 25,
                                  //     //         color: Colors.white,
                                  //     //       ),
                                  //     //       Text(
                                  //     //         plant.name,
                                  //     //         style: TextStyle(
                                  //     //             fontSize: 24,
                                  //     //             color: Colors.white,
                                  //     //             fontWeight: FontWeight.w600,
                                  //     //             letterSpacing: 1.2),
                                  //     //       ),
                                  //     //     ],
                                  //     //   )
                                  //     // ],
                                  //   ),
                                  // )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
