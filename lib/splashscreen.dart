import 'package:flutter/material.dart';

import 'package:prjctlog/loginscreen.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    GotoLogin();
   
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              'https://i.pinimg.com/474x/02/f9/ae/02f9ae727a3f310c67265e798221adb9.jpg'
              ),
          Center(
              child: Text(
            'welcome',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
        ],
      ),
    );
  }

  Future<void> GotoLogin() async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.of(context)
        .pushReplacement((MaterialPageRoute(builder: (ctx) => LoginScreen())));
  }

 
}
