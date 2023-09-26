import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quless/pages/test.dart';
import 'package:quless/pages/vendor_home.dart';
import 'package:quless/pages/vendor_order.dart';
import 'package:quless/pages/vendor_profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selected = 0;
  List <Widget> screens = [
      VendorHome(),
      VendorOrder(),
      VendorProfile() 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selected],
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav( 
              gap: 8,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.amber,
              color: Colors.white,
              backgroundColor: Colors.black,
              padding: EdgeInsets.all(10),
              onTabChange: (i){
               setState(() {
                 selected = i;
               });
              },
              tabs: const[
                GButton(icon: Icons.home,
                        text: 'Home',
                        
                ),
                GButton(icon: Icons.shopping_cart_outlined,
                        text: 'Orders',
                ),
                GButton(icon: Icons.person,
                        text: 'Profile',
                ),
            ],),
          ),
        ),
    );
  }
}