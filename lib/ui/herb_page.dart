// import 'package:bottom_nav_ui/models/fragrant_data_model.dart';
import 'package:bottom_nav_ui/models/herb_data_model.dart';
// import 'package:bottom_nav_ui/models/herb_model.dart';
import 'package:bottom_nav_ui/ui/plant_cards.dart';
// import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class HerbPage extends StatefulWidget {
  @override
  State<HerbPage> createState() => _HerbPageState();
}

class _HerbPageState extends State<HerbPage> {
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
                      image: AssetImage('assets/images/herb.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: Column(
                    children: [
                      Row(
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
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 350,
                        height: 80,
                        color: Colors.black38,
                        child: Text(
                          'Herbal',
                          style: TextStyle(
                              color: Color.fromARGB(255, 226, 226, 226),
                              fontSize: 35,
                              fontWeight: FontWeight.w600),
                        ),
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
            // ============================================================
            Expanded(
              child: ListView.builder(
                itemCount: activities.length,
                itemBuilder: (BuildContext context, int index) {
                  Activity activity = activities[index];
                  // Fragrant fragrant = widget.plant.fragrants[index];
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (builder) => AlertDialog(
                          title: Text(
                            '${activity.name}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          content: Column(
                            children: [
                              Image(
                                image: AssetImage('${activity.imageUrl}'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '${activity.description}',
                                style: TextStyle(
                                    letterSpacing: 1.5,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('Ok'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 240, 239, 245),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 180, 180, 180),
                                offset: Offset(6, 6),
                                blurRadius: 10,
                                spreadRadius: 1,
                              ),
                            ],
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
                                            activity.imageUrl,
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
                                margin: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 210,
                                      child: Text(
                                        activity.name,
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Scientific name: \n${activity.scientific}',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    // Text(
                                    //   'Description: \n${activity.description}',
                                    //   style: TextStyle(
                                    //     fontSize: 12,
                                    //     fontWeight: FontWeight.w600,
                                    //     color: Colors.grey,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
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
