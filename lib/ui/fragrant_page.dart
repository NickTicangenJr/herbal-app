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
                      image: AssetImage('assets/fragrant/honeysuckle.jpg'),
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
                          'Fragrants',
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
                itemCount: fragrants.length,
                itemBuilder: (BuildContext context, int index) {
                  Fragrant fragrant = fragrants[index];
                  // Fragrant fragrant = widget.plant.fragrants[index];
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (builder) => AlertDialog(
                          title: Text(
                            '${fragrant.name}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          content: Column(
                            children: [
                              Image(
                                image: AssetImage('${fragrant.imageUrl}'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '${fragrant.description}',
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
                                margin: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 210,
                                      child: Text(
                                        fragrant.name,
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Scientific name: \n${fragrant.scientific}',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
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
