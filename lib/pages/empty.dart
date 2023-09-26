import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quless/main.dart';

class Empty extends StatelessWidget {
   Empty({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    UserInfoController userInfoController = Get.find<UserInfoController>();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(child: Icon(Icons.arrow_back_ios),onTap: () {
          Navigator.pop(context, 'testt');
        },),
        backgroundColor: Colors.black,
        toolbarHeight:30,
      ),
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
                SizedBox(height: 70,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('username',style: TextStyle(fontSize: 15,color: Colors.white),)),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(fillColor: Color.fromARGB(255, 70, 70, 70),filled: true,border: OutlineInputBorder()),),
               
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Password',style: TextStyle(fontSize: 15,color: Colors.white),)),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(fillColor: Color.fromARGB(255, 70, 70, 70),filled: true,border: OutlineInputBorder(),),keyboardType: TextInputType.emailAddress,),
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Address',style: TextStyle(fontSize: 15,color: Colors.white),)),
                TextField(
                  controller: addressController,
                  decoration: InputDecoration(fillColor: Color.fromARGB(255, 70, 70, 70),filled: true,border: OutlineInputBorder()),keyboardType: TextInputType.emailAddress,),
                SizedBox(height: 30,),
                ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 70),backgroundColor: Colors.amber),
                onPressed: (){
                  var username = usernameController.text;
                  var address = addressController.text;
                  var password = passwordController.text;
                  if(username.isNotEmpty && password.isNotEmpty && address.isNotEmpty){
                     userInfoController.updateuser(
                newUsername: usernameController.text,
                newEmail: emailController.text,
                newAddress: addressController.text,
                newPassword:int.tryParse(passwordController.text) ?? 0,
                );
                Navigator.of(context).pop('testt');
                   
                  }else{
                   print('okay');
                  }
                }, child: Text('Submit')),
                
              ],
                     ),
                   ),
           ),]
      ),
    );
  }
}
// there are conflictions in the software industry the as reergards two concepts : end points and apis 
// higlght similarities and difference 