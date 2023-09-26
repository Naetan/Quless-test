import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children:[ 
           Image.asset('assets/images/quless1.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),
          Padding(padding: EdgeInsets.all(8),
        child: Column(children: [
          Spacer(),
          const Text('QULESS', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.amber),),
          SizedBox(height: 70,),
          const Text('Select an Option.', style: TextStyle(color: Colors.white),),
          SizedBox(height: 40,),
           ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed('customer');
           },
           style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), 
                ),
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.amber
                ),
                 child: 
           const Text('SignUp As A User'),
           ),
           SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('vendor');
            },
           style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), 
                ),
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.amber
                ),
                 child: 
           const Text('SignUp As A Vendor'),
           ), 
           Spacer(),
        ]),
        ),]
      ),
    );
     
  }
}