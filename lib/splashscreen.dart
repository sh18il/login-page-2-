import 'package:flutter/material.dart';
import 'package:prjctlog/homescreen.dart';
import 'package:prjctlog/loginscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

const SAVEKEY = 'userlogddin';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    gotologin();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
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

  Future<void> gotologin() async {
    await Future.delayed(Duration(seconds: 3));

    Navigator.of(context)
        .pushReplacement((MaterialPageRoute(builder: (ctx) => LoginScreen())));
  }

  // Future<void> checklogged() async {
  //   final _sharedpfr = await SharedPreferences.getInstance();
  //   final _userlogged = _sharedpfr.getBool(SAVEKEY); //USRLOGGED LEEKK
  //   if (_userlogged == null || _userlogged == false) {
  //     gotologin();
  //   } else {
  //     Navigator.of(context)
  //         .pushReplacement(MaterialPageRoute(builder: (ctx) => HomeScreen()));
  //   }
  // }
}
