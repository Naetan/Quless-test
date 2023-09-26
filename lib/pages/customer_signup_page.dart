import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
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
           Padding(
          padding:  const EdgeInsets.all(15),
          child: Column(  
          children: [
            Spacer(),
            const Text('QULESS', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.amber),),
            const SizedBox(height: 80,),
            const TextField(
              decoration: InputDecoration(fillColor: Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Username', hintStyle: TextStyle(color: Colors.amber),
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
              ),
            ),
            const SizedBox(height: 20,),
            const TextField(
              decoration: InputDecoration(fillColor: const Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Email', hintStyle: TextStyle(color: Colors.amber),
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
              ),
            ),
            const SizedBox(height: 20,),
            const TextField(
              decoration: InputDecoration(fillColor: const Color.fromARGB(255, 119, 119, 119), filled: true, hintText: 'Password', hintStyle: TextStyle(color: Colors.amber),
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
              labelStyle: TextStyle(color: Colors.white)
              
              ),
            ),
          const SizedBox(height: 50,),
          ElevatedButton(onPressed: (){},
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
          Spacer()
          ],
          ),
        ),]
      ),
    );
  }
}