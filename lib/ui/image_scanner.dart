import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'package:community_material_icon/community_material_icon.dart';
// import 'package:tflite/tflite.dart';

class ImageScanner extends StatefulWidget {
  // const ImageScanner({Key? key}) : super(key: key);

  @override
  State<ImageScanner> createState() => _ImageScannerState();
}

class _ImageScannerState extends State<ImageScanner> {
  File? _image;

  @override
  // void initState() {
  //   super.initState();
  //   loadModelFiles();
  //   _loading = true;
  // }

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this._image = imageTemp);
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  Future pickImageCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this._image = imageTemp);
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  //TODO load model files
  // loadModelFiles() async {
  //   String res = await Tflite.loadModel(
  //       model: "assets/model_unquant.tflite",
  //       labels: "assets/labels.txt",
  //       numThreads: 1, // defaults to 1
  //       isAsset:
  //           true, // defaults to true, set to false to load resources outside assets
  //       useGpuDelegate:
  //           false // defaults to false, set to true to use GPU delegate
  //       );
  // }

  //TODO perform image recognition with images
//   startImageRecognition() async {
//     var recognitions = await Tflite.runModelOnImage(
//   path: image.path,   // required
//   imageMean: 0.0,   // defaults to 117.0
//   imageStd: 255.0,  // defaults to 1.0
//   numResults: 2,    // defaults to 5
//   threshold: 0.2,   // defaults to 0.1
//   asynch: true      // defaults to true
// );
//   }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF9F8FD),
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //   begin: Alignment.topRight,
        //   end: Alignment.bottomLeft,
        //   colors: [Color(0xff5FFBF1), Color(0xff86A8E7), Color(0xffD16BA5)],
        // )),
        child: Container(
          margin: EdgeInsets.all(20),
          child: Center(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    color: Colors.blueAccent,
                    child: Row(
                      children: [
                        Icon(
                          CommunityMaterialIcons.image_outline,
                          color: Colors.white,
                        ),
                        Text(
                          "Album",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {
                      pickImage();
                    },
                  ),
                  MaterialButton(
                    color: Colors.blueAccent,
                    child: Row(
                      children: [
                        Icon(
                          CommunityMaterialIcons.camera_plus_outline,
                          color: Colors.white,
                        ),
                        Text(
                          "Camera",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {
                      pickImageCamera();
                    },
                  ),
                ],
              ),
              _image != null
                  ? SizedBox(
                      height: 300,
                      width: 300,
                      child: Card(
                        child: Image.file(
                          _image!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset('assets/images/toa.jpg'))
            ]),
          ),
        ),
      ),
    );
  }
}
