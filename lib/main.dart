import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quless/pages/customer_signup_page.dart';
import 'package:quless/pages/empty.dart';
import 'package:quless/pages/login_page.dart';
import 'package:quless/pages/navigation_bar.dart';
import 'package:quless/pages/onboarding.dart';
import 'package:quless/pages/signup_page.dart';
import 'package:quless/pages/splash_screen.dart';
import 'package:quless/pages/test.dart';
import 'package:quless/pages/vendor_home.dart';
import 'package:quless/pages/vendor_signup_page.dart';

class VendorController extends GetxController{
  RxString email = ''.obs;
  RxInt password = 0.obs;
  RxString vendorname = ''.obs;
  RxString location = ''.obs;
  RxString notes = ''.obs;
  RxInt accountnum = 0.obs;
  RxString bankname = ''.obs;

  void updatevendor({required String newvendorname,required String newEmail , required int newPassword, required String newLocation,required String newNotes,required String newBankname,required int newAccountnum}){
    vendorname.value = newvendorname;
    email.value = newEmail;
    password.value = newPassword;
    location.value = newLocation;
    notes.value = newNotes;
    accountnum.value = newAccountnum;
	  bankname.value = newBankname;
  }
}


class UserInfoController extends GetxController{
  RxString username = ''.obs;
  RxString email = ''.obs;
  RxInt password = 0.obs;
  RxString address = ''.obs;

  void updateuser({required String newUsername,required String newEmail , required int newPassword, required String newAddress }){
    username.value = newUsername;
    email.value = newEmail;
    password.value = newPassword;
    address.value = newAddress;
  }
}

class ImageController extends GetxController {
  RxString imagePath = ''.obs; // Use RxString to observe changes
 
  void setImage(String path) {
    imagePath.value = path;
  }
}
void main() {
  ImageController imageController = ImageController();
  Get.put(imageController);
  VendorController vendorController = VendorController();
  Get.put(vendorController);
  UserInfoController userInfoController = UserInfoController();
  Get.put(userInfoController);
  runApp(const Quless());
}

class Quless extends StatelessWidget {
  const Quless({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      initialRoute: 'splash',
      routes: {
        '/':(context) => LoginPage(),
        'nav':(context) => NavBar(),
        'test':(context) => Testt(),
        'empty':(context) => Empty(),
        'onboard':(context) => Onboarding(),
        'splash':(context) => Splash(),
        'signup':(context) => SignupPage(),
        'customer':(context) =>  CustomerPage(),
        'vendor':(context) =>  VendorPage(),
        'vendorhome':(context) => VendorHome()
      }
    );
  }
}