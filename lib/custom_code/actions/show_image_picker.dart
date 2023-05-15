// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:image_picker/image_picker.dart';

final ImagePicker _picker = ImagePicker();

Future<void> showImagePicker(BuildContext context) async {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('Take Photo'),
              onTap: () async {
                Navigator.pop(context);
                String error = await takePhoto(context);
                // Handle any errors returned by takePhoto()
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Choose from Gallery'),
              onTap: () async {
                Navigator.pop(context);
                String error = await selectPhoto(context);
                // Handle any errors returned by selectPhoto()
              },
            ),
          ],
        ),
      );
    },
  );
}

Future<String> takePhoto(BuildContext context) async {
  String error;

  XFile? photoURL;

  try {
    photoURL = await _picker.pickImage(source: ImageSource.camera);
    XFile nonNullablePhotoURL =
        photoURL!; // Use the null-aware operator `!` to convert the nullable `photoURL` to a non-nullable `XFile`
    if (nonNullablePhotoURL != null) {
      FFAppState().urlImages.add(photoURL.path);
    }

    // Do something with `nonNullablePhotoURL`
  } catch (e) {
    print('Error picking image: $e');

    // Assign a default value to `nonNullablePhotoURL`
    XFile nonNullablePhotoURL = XFile('default/path');
  }

  return 'error';
}

Future<String> selectPhoto(BuildContext context) async {
  String error;

  XFile? photoURL;

  try {
    photoURL = await _picker.pickImage(source: ImageSource.gallery);
    XFile nonNullablePhotoURL =
        photoURL!; // Use the null-aware operator `!` to convert the nullable `photoURL` to a non-nullable `XFile`
    if (nonNullablePhotoURL != null) {
      FFAppState().urlImages.add(photoURL.path);
    }

    // Do something with `nonNullablePhotoURL`
  } catch (e) {
    print('Error picking image: $e');

    // Assign a default value to `nonNullablePhotoURL`
    XFile nonNullablePhotoURL = XFile('default/path');
  }

  return 'error';
}
