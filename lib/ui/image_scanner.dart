import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
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
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xff5FFBF1), Color(0xff86A8E7), Color(0xffD16BA5)],
        )),
        child: Center(
          child: Column(children: [
            MaterialButton(
              color: Colors.blueAccent,
              child: Text(
                "Pick from image gallery",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white70),
              ),
              onPressed: () {
                pickImage();
              },
            ),
            MaterialButton(
              color: Colors.blueAccent,
              child: Text(
                "Pick from camera",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white70),
              ),
              onPressed: () {
                pickImageCamera();
              },
            ),
            _image != null
                ? SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.file(
                      _image!,
                      fit: BoxFit.cover,
                    ),
                  )
                : const Center(child: Text("No image selected"))
          ]),
        ),
      ),
    );
  }
}
