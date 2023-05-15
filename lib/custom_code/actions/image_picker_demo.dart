// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

import 'dart:io';

import 'package:image_picker/image_picker.dart';

Future imagePickerDemo() async {
  // Add your function code here!
}

class ImagePickerDemo extends StatefulWidget {
  @override
  _ImagePickerDemoState createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  final ImagePicker _picker = ImagePicker();
  List<File> _imageList = [];

  Future<void> _takePhoto() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      setState(() {
        _imageList.add(File(photo.path));
      });
    }
  }

  Future<void> _selectPhoto() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
    if (photo != null) {
      setState(() {
        _imageList.add(File(photo.path));
      });
    }
  }

  Future<void> _deleteImage(File image) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete image?'),
          content: Text('Do you want to delete this image?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
    if (confirmed == true) {
      setState(() {
        _imageList.remove(image);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Demo'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          for (final image in _imageList)
            GestureDetector(
              onLongPress: () => _deleteImage(image),
              child: Card(
                child: Image.file(image),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
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
                        await _takePhoto();
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.image),
                      title: Text('Choose from Gallery'),
                      onTap: () async {
                        Navigator.pop(context);
                        await _selectPhoto();
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
