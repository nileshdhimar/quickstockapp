// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:multiple_images_picker/multiple_images_picker.dart';

final ImagePicker _picker = ImagePicker();

class YourWidget extends StatefulWidget {
  const YourWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _YourWidgetState createState() => _YourWidgetState();
}

List<String> photoPaths = [];

class _YourWidgetState extends State<YourWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Adjust the number of columns as needed
        ),
        itemCount: photoPaths.length,
        itemBuilder: (context, index) {
          return Image.file(
            File(photoPaths[index]),
            fit: BoxFit.cover,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          List<String> selectedPhotos = await selectPhoto(context);
          if (selectedPhotos.isNotEmpty) {
            photoPaths.addAll(selectedPhotos);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// The selectPhoto function remains the same

Future<List<String>> selectPhoto(BuildContext context) async {
  List<String> photoURLs = [];

  try {
    List<XFile>? selectedPhotos =
        await _picker.pickMultiImage(); // Remove source parameter
    if (selectedPhotos != null) {
      for (XFile photo in selectedPhotos) {
        FFAppState().urlImages.add(photo.path);
        photoURLs.add(photo.path);
      }
    }
  } catch (e) {
    print('Error picking images: $e');
  }

  return photoURLs;
}
