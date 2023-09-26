import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:quless/main.dart';

class VendorHome extends StatefulWidget {
  const VendorHome({Key? key}) : super(key: key);

  @override
  State<VendorHome> createState() => _VendorHomeState();
}

class MenuItem {
  final String name;
  final double price;
  final String imagePath;

  MenuItem({required this.name, required this.price, required this.imagePath});
}

class _VendorHomeState extends State<VendorHome> {
  final List<MenuItem> menuItems = [];
  final ImageController imageController = Get.find<ImageController>();
  final VendorController vendorController = Get.find<VendorController>();

  Future<void> _showAddMenuItemDialog() async {
    String name = '';
    double price = 0.0;
    String? imagePath;

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Menu Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: (value) {
                  name = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  price = double.parse(value);
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  final imagePicker = ImagePicker();
                  PermissionStatus status = await Permission.storage.request();
                  if (status.isGranted) {
                    final selectedImage =
                        await imagePicker.pickImage(source: ImageSource.gallery);

                    if (selectedImage != null) {
                      imageController.setImage(selectedImage.path);
                      imagePath = selectedImage.path;
                    }
                  } else {
                    // Handle denied or restricted permissions
                    if (status.isDenied) {
                      // Handle when user denies permission
                    } else if (status.isRestricted) {
                      // Handle when permission is restricted, typically by parental controls
                    }
                  }
                },
                child: Text('Select Image'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final newItem =
                    MenuItem(name: name, price: price, imagePath: imagePath ?? '');
                setState(() {
                  menuItems.add(newItem);
                });
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Align(
          alignment: Alignment.center,
          child: Text('${vendorController.vendorname}'),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: 30,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/quless1.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          PageView(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40))),
                        child: imageController.imagePath.isNotEmpty
                            ? ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40)),
                                child: Image.file(
                                  File(imageController.imagePath.value),
                                  fit: BoxFit.cover,
                                  width: 200,
                                  height: 200,
                                ),
                              )
                            : Icon(
                                Icons.add_a_photo,
                                size: 48.0,
                                color: Colors.grey,
                              ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          '${vendorController.vendorname}',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                        color: Colors.amber,
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'NOTE:  ${vendorController.notes}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Divider(
                                color: Colors.amber,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'LOCATION:  ${vendorController.location}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                        color: Colors.amber,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Container(
                                  height: 400,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/pizza.jpg',
                                      fit: BoxFit.cover,
                                      width: 200,
                                      height: 200,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 400,
                                width: 350,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/images/pizza2.jpg',
                                    fit: BoxFit.cover,
                                    width: 200,
                                    height: 200,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: ListView.builder(
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {
                    final menuItem = menuItems[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: menuItem.imagePath.isNotEmpty
                            ? AssetImage(menuItem.imagePath)
                            : null,
                        backgroundColor: Colors.grey,
                      ),
                      title: Text(menuItem.name,style: TextStyle(color: Colors.white),),
                      subtitle:
                          Text('\$${menuItem.price.toStringAsFixed(2)}',style: TextStyle(color: Colors.white)),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddMenuItemDialog,
        child: Icon(Icons.add),
      ),
    );
  }
}
