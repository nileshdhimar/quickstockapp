// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:multiple_images_picker/multiple_images_picker.dart';

final ImagePicker _picker = ImagePicker();

//Future<String> selectPhoto(BuildContext context) async {
//  String error;

//  XFile? photoURL;

//  try {
//    photoURL = await _picker.pickImage(source: ImageSource.gallery);
//    XFile nonNullablePhotoURL =
//        photoURL!; // Use the null-aware operator `!` to convert the nullable `photoURL` to a non-nullable `XFile`
//    if (nonNullablePhotoURL != null) {
//      FFAppState().urlImages.add(photoURL.path);
//    }

// Do something with `nonNullablePhotoURL`
//  } catch (e) {
//    print('Error picking image: $e');

// Assign a default value to `nonNullablePhotoURL`
//    XFile nonNullablePhotoURL = XFile('default/path');
//  }

//  return 'error';
//}

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
