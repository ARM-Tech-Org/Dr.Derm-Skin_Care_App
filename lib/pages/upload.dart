import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
// import 'package:mime/mime.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  _UploadPageState createState() {
    return _UploadPageState();
  }
}

class _UploadPageState extends State<UploadPage> {
  File? _image;
  final picker = ImagePicker();

  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future<void> uploadImage() async {
    if (_image == null) return;

    String url = 'http://0.0.0.0:8080/api/predict/';
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(
      http.MultipartFile(
        'file',
        _image!.readAsBytes().asStream(),
        _image!.lengthSync(),
        filename: basename(_image!.path),
        // contentType: MediaType.parse(lookupMimeType(_image!.path) ?? 'image/jpeg'),
      ),
    );

    var response = await request.send();
    if (response.statusCode == 200) {
      const Text('Uploaded!');
    } else {
      const Text('Upload failed!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? const Text('No image selected.')
                : Image.file(_image!),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: pickImage,
              child: const Text('Pick Image'),
            ),
            ElevatedButton(
              onPressed: uploadImage,
              child: const Text('Upload Image'),
            ),
          ],
        ),
      ),
    );
  }
}
