import 'package:flutter/material.dart';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:get/get.dart';
import 'package:quless/main.dart';
import 'package:image_picker/image_picker.dart';

class VendorProfile extends StatelessWidget {
   VendorProfile({super.key});
   ImageController imagecontroller = Get.find<ImageController>();
   VendorController vendorController = Get.find<VendorController>();

   //function to pick image
    Future<void> _pickImage() async {
  final imagePicker = ImagePicker();

  // Request permission to access the gallery
  PermissionStatus status = await Permission.storage.request();
  if (status.isGranted) {
    final selectedImage = await imagePicker.pickImage(source: ImageSource.gallery);
   
      if (selectedImage != null) {
        imagecontroller.setImage(selectedImage.path);
        
      }
    
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
                   _pickImage();// Open image picker when tapped
              },
                child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: double.infinity,
              height: 250,
              child: imagecontroller.imagePath.isEmpty
              ? Icon(
                  Icons.add_a_photo,
                  size: 48.0,
                  color: Colors.grey,
                )
              : ClipRRect(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),topLeft: Radius.circular(10),topRight: Radius.circular(10)), // Adjust the radius as needed
                  child: Image.file(
                   File(imagecontroller.imagePath.value),
                    fit: BoxFit.cover,
                    width: double.infinity, // Set the width and height of the clipped image
                    height: 600,
                  ),
                )
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
        ),
        ]
      
    ),
    );
  }
}