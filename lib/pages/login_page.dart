import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Stack(
        children:[
           Image.asset('assets/images/quless1.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          ),
           Padding(
          padding:  const EdgeInsets.all(20),
          child: Column(  
          children: [
            Spacer(),
            const Text('QULESS', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.amber),),
            const SizedBox(height: 80,),
            TextField(
              controller: emailController,
              decoration: InputDecoration(fillColor: Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Email', hintStyle: TextStyle(color: Colors.amber),
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(fillColor: const Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Password', hintStyle: TextStyle(color: Colors.amber),
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
              ),
            ),
            Align(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: (){}, child: Text('Forgot Password?', style: TextStyle(color: Colors.amber),),
            ),
            
          ),
          const SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            
          },
           style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), 
                ),
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.amber
                ),
                 child: 
           const Text('Login'),
           ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('Dont Have An Account?', style: TextStyle(color: Colors.white)),
              TextButton(onPressed: (){
                Navigator.of(context).pushNamed('signup');
              }, child: const Text('Signup',style: TextStyle(fontSize: 17, color: Colors.amber)))
            ],
          ),
          Spacer()
          ],
          ),
        ),]
      ),
    );
  }
}