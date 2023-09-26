import 'package:flutter/material.dart';

class VendorOrder extends StatefulWidget {
  const VendorOrder({super.key});

  @override
  State<VendorOrder> createState() => _VendorOrderState();
}

class _VendorOrderState extends State<VendorOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children:[ 
         Image.asset('assets/images/quless1.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),
        Center(
        child: Text('OrderPage',style: TextStyle(fontSize: 30,color: Colors.white),),
      ),]
    ),
    );
  }
}