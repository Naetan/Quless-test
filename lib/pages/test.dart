
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quless/main.dart';
import 'package:image_picker/image_picker.dart';

class Testt extends StatefulWidget {
   Testt({super.key});

  @override
  State<Testt> createState() => _TesttState();
}

class _TesttState extends State<Testt> {
   ImageController imagecontroller = Get.find<ImageController>();
   File? _image;

  // Function to open the image picker
  Future<void> _pickImage() async {
  final imagePicker = ImagePicker();

  // Request permission to access the gallery
  PermissionStatus status = await Permission.storage.request();
  if (status.isGranted) {
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
   
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        
      }
    });
  } else {
    // Handle denied or restricted permissions
    if (status.isDenied) {
      // Handle when user denies permission
    } else if (status.isRestricted) {
      // Handle when permission is restricted, typically by parental controls
    }
  }
}

  @override
  Widget build(BuildContext context) {
    VendorController vendorController = Get.find<VendorController>();
    
    return Scaffold(
         appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Align(
          alignment: Alignment.center,
          child: Text('PROFILE')),
          automaticallyImplyLeading: false,
          toolbarHeight: 30,

        
      ),
         body: Stack(
           children:[ 
            Image.asset('assets/images/quless1.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),
          
            Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              InkWell(
               onTap: () {
                  _pickImage(); // Open image picker when tapped
              },
                child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: double.infinity,
              height: 250,
              child: _image == null
              ? Icon(
                  Icons.add_a_photo,
                  size: 48.0,
                  color: Colors.grey,
                )
              : Image.file(_image!, fit: BoxFit.fill),
             ),
           ),
              SizedBox(height: 20,),
              Card(
                elevation: 4.0,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    '${vendorController.vendorname}',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '${vendorController.email}',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.dashboard,color: Colors.white,),
                title: Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
               
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.logout,color: Colors.white,),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              
            ],
          ),
        ),]
         ),
    );
  }
}