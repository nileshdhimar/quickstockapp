// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:multiple_images_picker/multiple_images_picker.dart';
//import 'package:multi_image_picker/multi_image_picker.dart';

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

// Define a list to store the paths of the selected photos
List<String> photoPaths = [];

class _YourWidgetState extends State<YourWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Adjust the number of columns as needed
          crossAxisSpacing: 8, // Adjust the spacing between images
          mainAxisSpacing: 8, // Adjust the spacing between images
        ),
        itemCount: photoPaths.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                    8), // Adjust the border radius as needed
                child: Image.file(
                  File(photoPaths[index]),
                  fit: BoxFit.cover,
                  height: 120,
                  width: 120,
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: GestureDetector(
                  onTap: () {
                    // Remove the image from the list when delete button is pressed
                    setState(() {
                      // Remove the image from the list when the delete button is pressed
                      photoPaths.removeAt(index);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    padding: EdgeInsets.all(4),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          List<String> selectedPhotos = await selectPhoto(context);
          if (selectedPhotos.isNotEmpty) {
            setState(() {
              photoPaths.addAll(selectedPhotos);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// The selectPhoto function remains the same

Future<List<String>> selectPhoto(BuildContext context) async {
  List<String> photoPaths = [];

  try {
    List<XFile>? selectedPhotos = await _picker.pickMultiImage();
    if (selectedPhotos != null) {
      for (XFile photo in selectedPhotos) {
        photoPaths.add(photo.path);
      }
    }
  } catch (e) {
    print('Error picking images: $e');
  }

  return photoPaths;
}
