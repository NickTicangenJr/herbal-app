// import 'dart:ffi';
import 'dart:io';

import 'package:bottom_nav_ui/models/herb_data_model.dart';
import 'package:bottom_nav_ui/models/herb_instruction_model.dart';
import 'package:bottom_nav_ui/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'package:community_material_icon/community_material_icon.dart';
import 'package:logger/logger.dart';
import 'package:tflite/tflite.dart';
// import 'package:tflite/tflite.dart';

class ImageScanner extends StatefulWidget {
  // const ImageScanner({Key? key}) : super(key: key);

  @override
  State<ImageScanner> createState() => _ImageScannerState();
}

class _ImageScannerState extends State<ImageScanner> {
  final controller = TextEditingController();
  List<Instruction> allinstruct = instructions;

  bool loading = true;
  File? file;
  var output;
  // var label;
  // var use;
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
      threshold: 0.2,
      imageMean: 0.0,
      imageStd: 255.0,
      asynch: true,
    );
    //   path: filepath,   // required
    // imageMean: 0.0,   // defaults to 117.0
    // imageStd: 255.0,  // defaults to 1.0
    // numResults: 2,    // defaults to 5
    // threshold: 0.2,   // defaults to 0.1
    // asynch: true

    setState(() {
      output = prediction;
      // label = (output![0]['label']).toString().substring(2);
      // use = medecine[label];
      loading = false;
    });
  }
  // Indiano=========
  // var plantName=getPlantName(output);
  //   var instruction=searchHerbal(plantName);
  //   showDialog(builder:(ctx)=>AlertDialog(content:Text(instruction.tostring())));

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

  final log = Logger();

  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff5FFBF1),
                Color(0xff86A8E7),
                Color(0xffD16BA5),
              ],
            ),
          ),
        ),
        toolbarHeight: 68,
        backgroundColor: Colors.transparent,
        title: Text(
          "Herbal Identifier",
          style: GoogleFonts.kanit(
              fontSize: 35, fontWeight: FontWeight.w500, letterSpacing: 1),
        ),
        elevation: 10,
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 240, 239, 245),
        child: Column(
          children: <Widget>[
            loading == true
                ? Container(
                    height: 270,
                    width: 350,
                    color: Color.fromARGB(255, 255, 255, 255),
                    margin: EdgeInsets.only(top: 10),
                    child: Center(child: Text("No image selected")),
                  )
                : Container(
                    width: 350,
                    margin: EdgeInsets.only(top: 10),
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: [
                        Container(
                          height: 270,
                          width: 350,
                          child: Image.file(
                            file!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      ' ( ' +
                                          ((output![0]['confidence']
                                                      as double) *
                                                  100)
                                              .toStringAsFixed(0) +
                                          "% )",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.green,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      // 'Result: ' +
                                      (output![0]['label'])
                                          .toString()
                                          .substring(2),
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 92, 92, 92),
                                      ),
                                      textAlign: TextAlign.left,
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
              height: 10,
            ),

            Stack(
              // child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // IconButton(
                    //     onPressed: () => debugPrint(use),
                    //     icon: Icon(Icons.ac_unit_outlined)),
                    Align(
                      // alignment: Alignment(-0.5, 0.8),
                      child: GestureDetector(
                        onTap: getImageFromCamera,
                        child: Container(
                          height: 40,
                          width: 150,
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
                    Align(
                      child: GestureDetector(
                        // onTap: log.v('use'),
                        onTap: getImageFromGallery,
                        child: Container(
                          height: 40,
                          width: 150,
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
                              ),
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              // ),
            ),
            SizedBox(
              height: 10,
            ),

            // Search bar insert here
            Container(
              margin: EdgeInsets.all(12),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for herbal information here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                onChanged: searchHerbal,
              ),
            ),
            //Listview info here
            Expanded(
              child: ListView.builder(
                itemCount: allinstruct.length,
                itemBuilder: (context, index) {
                  final instruction = allinstruct[index];
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (builder) => AlertDialog(
                          title: Text(
                            '${instruction.name}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('${instruction.imageUrl}'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'How to Use:\n  ${instruction.usage}\n\nLimitations:\n  ${instruction.limitation}',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                // Text(
                                //   'Limitations: \n${instruction.limitation}',
                                //   textAlign: TextAlign.left,
                                //   style: TextStyle(fontSize: 18),
                                // ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Disclaimer: \n${instruction.warning}',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.red,
                                      fontStyle: FontStyle.italic),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('I understand'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: SingleChildScrollView(
                      child: ListTile(
                        leading: Image(
                          image: AssetImage(instruction.imageUrl),
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                        title: Text(instruction.name),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  void searchHerbal(String query) {
    final suggestions = instructions.where((instruction) {
      final herbTitle = instruction.name.toLowerCase();
      final input = query.toLowerCase();

      return herbTitle.contains(input);
    }).toList();

    setState(() => allinstruct = suggestions);
  }
}
