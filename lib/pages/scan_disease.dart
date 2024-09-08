import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ScanDiseasePage extends StatefulWidget {
  const ScanDiseasePage({super.key});

  @override
  State<ScanDiseasePage> createState() => _ScanDiseasePageState();
}

class _ScanDiseasePageState extends State<ScanDiseasePage> {
  File? _selectedImage;
  final picker = ImagePicker();

  Future _cropImage(File imageFile) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: imageFile.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: const Color(0xff0a0c16),
          toolbarWidgetColor: Colors.white,
          activeControlsWidgetColor: const Color(0xff2684fc),
          backgroundColor: const Color(0xff2e3859),
          statusBarColor: const Color(0xff0a0c16),
          hideBottomControls: true,
          lockAspectRatio: true,
        ),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );

    if (croppedFile != null) {
      setState(() {
        _selectedImage = File(croppedFile.path);
      });
    }
  }

  Future _pickImageFromGallery() async {
    await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    ).then((pickedImage) {
      if (pickedImage != null) {
        // _selectedImage = File(pickedImage.path);
        if (Platform.isAndroid || Platform.isIOS) {
          _cropImage(File(pickedImage.path));
        } else {
          _selectedImage = File(pickedImage.path);
        }
      } else {
        print('No image selected.');
      }
    });
  }

  Future _pickImageFromCamera() async {
    await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
    ).then((pickedImage) {
      if (pickedImage != null) {
        if (Platform.isAndroid || Platform.isIOS) {
          _cropImage(File(pickedImage.path));
        } else {
          _selectedImage = File(pickedImage.path);
        }
      } else {
        print('No image selected.');
      }
    });
  }

  Future _showBottomSheet(BuildContext context) async{
    return showModalBottomSheet(
      context: context,
      isDismissible: true,
      showDragHandle: true,
      useRootNavigator: true,
      builder: (builder) {
        return Container(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    _pickImageFromGallery();
                    Navigator.pop(context);
                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image,
                        color: Colors.white,
                        size: 50,
                      ),
                      Text(
                        'Gallery',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  onTap: () {
                    _pickImageFromCamera();
                    Navigator.pop(context);
                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera,
                        color: Colors.white,
                        size: 50,
                      ),
                      Text(
                        'Camera',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future _checkForPermission() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
      Permission.camera,
    ].request();

    if (statuses[Permission.storage]!.isGranted && statuses[Permission.camera]!.isGranted) {
      print('Permission Granted');
    } else {
      print('No Permission Granted');
      await Permission.camera.request();
      await Permission.storage.request();
    }
  }

  @override
  void initState(){
    super.initState();
    _checkForPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: const Color(0xff0a0c16),
      body: body(),
    );
  }

  Container body() {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      // color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              _showBottomSheet(context);
            },
            child: Container(
              height: 490,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff2e3859)
                /*_selectedImage != null
                  ? const Color(0xff2e2e2e)
                  : const Color(0xff2e3859),*/
              ),
              child: _selectedImage != null
                  ? Image.file(
                      _selectedImage!.absolute,
                      fit: BoxFit.contain,
                    )
                  : const Center(
                      child: Icon(
                        Icons.add_photo_alternate_outlined,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
          Container(
            height: 20,
          ),
          InkWell(
            onTap: () {

            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xff2684fc),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Scan Disease',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        color: Color(0xfffcfcfc),
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar(context) {
    return AppBar(
      title: const Text(
        'Scan Disease',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: const Color(0xff0a0c16),
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.only(left: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: SvgPicture.asset(
            'assets/icons/double-arrow-left.svg',
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}