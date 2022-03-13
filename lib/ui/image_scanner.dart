import 'dart:ffi';
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
  ImagePicker image = ImagePicker();

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
      threshold: 0.6,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    setState(() {
      output = prediction;
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
          children: [
            loading == true
                ? Container(
                    height: 350,
                    width: 350,
                    color: Color.fromARGB(255, 255, 255, 255),
                    margin: EdgeInsets.only(top: 30),
                  )
                : Container(
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
                          child: Image.file(file!),
                        ),
                        Text(
                          // 'Result: ' +
                          (output![0]['label']).toString().substring(2),
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 92, 92, 92)),
                        ),

                        Text(
                          'Confidence: ' +
                              ((output![0]['confidence'] as double) * 100)
                                  .toStringAsFixed(0) +
                              "%",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 92, 92, 92)),
                        ),
                        // Text(fine),
                      ],
                    ),
                  ),
            SizedBox(
              height: 70,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment(-0.5, 0.8),
                  child: MaterialButton(
                    elevation: 10.0,
                    child: new Icon(
                      CommunityMaterialIcons.image,
                      color: Colors.white,
                      size: 35,
                    ),
                    color: Color.fromARGB(255, 25, 209, 169),
                    onPressed: getImageFromGallery,
                  ),
                ),
                Align(
                  alignment: Alignment(0.5, 0.8),
                  child: MaterialButton(
                    elevation: 0.0,
                    child: new Icon(
                      CommunityMaterialIcons.camera_plus_outline,
                      size: 35,
                      color: Colors.white,
                    ),
                    color: Color.fromARGB(255, 25, 209, 169),
                    onPressed: getImageFromCamera,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
