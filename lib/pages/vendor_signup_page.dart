import 'package:flutter/material.dart';
import 'package:quless/main.dart';
import 'package:get/get.dart';

class VendorPage extends StatefulWidget {
  const VendorPage({super.key});

  @override
  State<VendorPage> createState() => _VendorPageState();
}

class _VendorPageState extends State<VendorPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController vendornameController = TextEditingController();
   TextEditingController locationController = TextEditingController();
  TextEditingController notesController = TextEditingController();
  TextEditingController banknameController = TextEditingController();
  TextEditingController accountnumController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    VendorController vendorController = Get.find<VendorController>();
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children:[ 
           Image.asset('assets/images/quless1.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),
          SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 50,),
                // Image.asset('assets/images/logo.png'),
                const Text('QULESS', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.amber),),
                
                const SizedBox(height: 20,),
                 TextField(
                  controller: emailController,
                  decoration: InputDecoration(fillColor: Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Email', hintStyle: TextStyle(color: Colors.amber),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
                  ),
                ),
                const SizedBox(height: 20,),
                 TextField(
                  controller: passwordController,
                  decoration: InputDecoration(fillColor: Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Password', hintStyle: TextStyle(color: Colors.amber),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
                  ),
                ),
                SizedBox(height: 30,),
                const Text('Vendor Details', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),),
                const SizedBox(height: 20,),
                 TextField(
                  controller: vendornameController,
                  decoration: InputDecoration(fillColor: Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Vendor Name', hintStyle: TextStyle(color: Colors.amber),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
                  ),
                ),
                const SizedBox(height: 20,),
                 TextField(
                  controller: locationController,
                  decoration: InputDecoration(fillColor: Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Location', hintStyle: TextStyle(color: Colors.amber),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
                  ),
                ),
                const SizedBox(height: 20,),
                 TextField(
                  controller: notesController,
                  decoration: InputDecoration(fillColor: Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Notes', hintStyle: TextStyle(color: Colors.amber),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
                  ),
                ),
                const SizedBox(height: 20,),
                 TextField(
                  controller: banknameController,
                  decoration: InputDecoration(fillColor: Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Bank Name', hintStyle: TextStyle(color: Colors.amber,),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  
                ),
                const SizedBox(height: 20,),
                 TextField(
                  controller: accountnumController,
                  decoration: InputDecoration(fillColor: Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Account Number', hintStyle: TextStyle(color: Colors.amber),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){


                  if(emailController.text.isEmpty|| passwordController.text.isEmpty||
                     vendornameController.text.isEmpty || locationController.text.isEmpty||
                     notesController.text.isEmpty || banknameController.text.isEmpty||
                     accountnumController.text.isEmpty
                  ){
                  
                  // show snackbar here
                  
                  }else{
                    vendorController.updatevendor(
                      newvendorname: vendornameController.text,
                       newEmail: emailController.text,
                        newPassword: int.tryParse(passwordController.text) ?? 0,
                         newLocation: locationController.text, 
                         newNotes: notesController.text,
                          newBankname: banknameController.text,
                           newAccountnum: int.tryParse(accountnumController.text) ?? 0,);
                  Navigator.of(context).pushNamed('nav');
                  }
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), 
                    ),
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.amber
                    ),
                     child: 
               const Text('SignUp'),
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                const Text('Already Have An Account?', style: TextStyle(color: Colors.white)),
                TextButton(onPressed: (){
                  Navigator.of(context).pushNamed('/');
                 }, child: const Text('Login',style: TextStyle(fontSize: 17, color: Colors.amber)))
                ],
               ),
               
              ],
            ),
          ),
        ),]
      )
    );
  }
}