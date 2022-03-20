// import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'package:community_material_icon/community_material_icon.dart';
import 'package:tflite/tflite.dart';
// import 'package:tflite/tflite.dart';

class ImageScanner extends StatefulWidget {
  // const ImageScanner({Key? key}) : super(key: key);

  @override
  State<ImageScanner> createState() => _ImageScannerState();
}

class _ImageScannerState extends State<ImageScanner> {
  bool loading = true;
  File? file;
  var output;
  // var label;
  // var use;
  ImagePicker image = ImagePicker();
  // var medecine = {
  //   'Guava leaves': 'Anti inflamatory',
  //   'Senna alata': 'Anti inflamatory',
  //   'Aloe vera': 'Anti inflammatory',
  //   'Malabar spinach': 'Anti inflamatory',
  //   'Bitter gourd': 'Anti inflamatory',
  //   'Crape Myrtle': 'Anti inflamatory',
  //   'Garlic': 'Anti inflamatory',
  //   'Currant tree': 'Anti inflamatory',
  //   'Sour Orange': 'Anti inflamatory',
  //   'Ginseng': 'Anti inflamatory',
  //   'Gumamela': 'Anti inflamatory',
  //   'Soursop': 'Anti inflamatory',
  //   'White leadtree': 'Anti inflamatory',
  //   'Calamansi': 'Anti inflamatory',
  //   'Calachuchi': 'Anti inflamatory',
  //   'Averrhoa bilimbi': 'Anti inflamatory',
  //   'Yellow bell': 'Anti inflamatory',
  //   'Miracle plant': 'Anti inflamatory',
  //   'Chaste tree': 'Anti inflamatory',
  //   'Ginger': 'Anti inflamatory',
  //   'Turmeric': 'Anti inflamatory',
  //   'Mangosteen': 'Anti inflamatory',
  //   'Heavenly elixir': 'Anti inflamatory',
  //   'Moringa': 'Anti inflamatory',
  //   'Butterfly coleus': 'Anti inflamatory',
  //   'Neem': 'Anti inflamatory',
  //   'Fragrant screwpine': 'Anti inflamatory',
  //   'Papaya': 'Anti inflamatory',
  //   'Banana': 'Anti inflamatory',
  //   'Tamarind': 'Anti inflamatory',
  //   'Capsicum': 'Anti inflamatory',
  //   'Pennyworth ': 'Anti inflamatory',
  //   'Lemon grass': 'Anti inflamatory',
  //   'Asthma plant': 'Anti inflamatory',
  //   'Fukien tea tree': 'Anti inflamatory',
  // };

  @override
  void initState() {
    super.initState();
    loadmodel().then((value) {
      setState(() {});
    });
  }

  detectimage(File l) async {
    var prediction = await Tflite.runModelOnImage(
        path: l.path,
        numResults: 2,
        threshold: 0.2,
        imageMean: 0.0,
        imageStd: 255.0,
        asynch: true);
    //   path: filepath,   // required
    // imageMean: 0.0,   // defaults to 117.0
    // imageStd: 255.0,  // defaults to 1.0
    // numResults: 2,    // defaults to 5
    // threshold: 0.2,   // defaults to 0.1
    // asynch: true

    setState(() {
      output = prediction;
      // label = (output[0]['label']).toString().substring(2);
      // use = medecine[label];
      loading = false;
    });
  }

  loadmodel() async {
    await Tflite.loadModel(
      model: 'assets/model_unquant.tflite',
      labels: 'assets/labels.txt',
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  getImageFromCamera() async {
    var img = await image.pickImage(source: ImageSource.camera);

    setState(() {
      file = File(img!.path);
    });
    detectimage(file!);
  }

  getImageFromGallery() async {
    var img = await image.pickImage(source: ImageSource.gallery);

    setState(() {
      file = File(img!.path);
    });
    detectimage(file!);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 240, 239, 245),
        child: Column(
          children: <Widget>[
            loading == true
                ? Container(
                    height: 350,
                    width: 350,
                    color: Color.fromARGB(255, 255, 255, 255),
                    margin: EdgeInsets.only(top: 30),
                    child: Center(child: Text("No image selected")),
                  )
                : Container(
                    width: 350,
                    margin: EdgeInsets.only(top: 30),
                    color: Color.fromARGB(255, 255, 255, 255),

                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10),
                    //   // boxShadow: [
                    //   //   BoxShadow(
                    //   //     color: Colors.grey.withOpacity(0.5),
                    //   //     spreadRadius: 5,
                    //   //     blurRadius: 7,
                    //   //     offset: Offset(0, 3), // changes position of shadow
                    //   //   ),
                    //   // ],
                    // ),
                    child: Column(
                      children: [
                        Container(
                          height: 350,
                          width: 350,
                          child: Image.file(
                            file!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    // 'Result: ' +
                                    (output![0]['label'])
                                        .toString()
                                        .substring(2),
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 92, 92, 92),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    ' ( ' +
                                        ((output![0]['confidence'] as double) *
                                                100)
                                            .toStringAsFixed(0) +
                                        "% )",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 92, 92, 92),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Medecinal use: ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 92, 92, 92),
                                    ),
                                  ),
                                  Text(
                                    'In progress',
                                    // use,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 92, 92, 92),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            SizedBox(
              height: 70,
            ),
            Stack(
              // child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Align(
                      // alignment: Alignment(-0.5, 0.8),
                      child: GestureDetector(
                        onTap: getImageFromCamera,
                        child: Container(
                          height: 40,
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                CommunityMaterialIcons.camera_plus_outline,
                                size: 25,
                                color: Color(0xffD16BA5),
                              ),
                              Text(
                                "Camera",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 92, 92, 92),
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 240, 239, 245),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                //Bottom
                                BoxShadow(
                                  color: Color.fromARGB(160, 209, 107, 165),
                                  offset: Offset(6, 6),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                                //Top
                                BoxShadow(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  offset: Offset(-6, -6),
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      child: GestureDetector(
                        onTap: getImageFromGallery,
                        child: Container(
                          height: 40,
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                CommunityMaterialIcons.image,
                                size: 25,
                                color: Color(0xffD16BA5),
                              ),
                              Text(
                                "Album",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 92, 92, 92),
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 240, 239, 245),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                //Bottom
                                BoxShadow(
                                  color: Color.fromARGB(160, 209, 107, 165),
                                  offset: Offset(6, 6),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                                //Top
                                BoxShadow(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  offset: Offset(-6, -6),
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              // ),
            )

            // Stack(
            //   children: [
            //     Align(
            //       alignment: Alignment(-0.5, 0.8),
            //       child: MaterialButton(
            //         elevation: 10.0,
            //         child: new Icon(
            //           CommunityMaterialIcons.image,
            //           color: Colors.white,
            //           size: 35,
            //         ),
            //         color: Color.fromARGB(255, 25, 209, 169),
            //         onPressed: getImageFromGallery,
            //       ),
            //     ),
            //     Align(
            //       alignment: Alignment(0.5, 0.8),
            //       child: MaterialButton(
            //         elevation: 0.0,
            //         child: new Icon(
            //           CommunityMaterialIcons.camera_plus_outline,
            //           size: 35,
            //           color: Colors.white,
            //         ),
            //         color: Color.fromARGB(255, 25, 209, 169),
            //         onPressed: getImageFromCamera,
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
