import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: PageView(
          children: [
            Center(child: Container(
              child: Column(
                children: [
                  Spacer(),
                  Text('1', style: TextStyle(fontSize: 50),),
                  TextButton(onPressed: (){
                    Navigator.of(context).pushNamed('/');
                  }, child: Text('push')),
                  Spacer()
                ],
              )),),
            Center(child: Text('2', style: TextStyle(fontSize: 50),),),
            Center(child: Text('3', style: TextStyle(fontSize: 50),),),
            Center(child: Text('4', style: TextStyle(fontSize: 50),),),
          ],
        ),
        
      ),
    );
  }
}