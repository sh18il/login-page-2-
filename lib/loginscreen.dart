import 'package:flutter/material.dart';
import 'package:prjctlog/homescreen.dart';
import 'package:prjctlog/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _namectroler = TextEditingController();
  TextEditingController _passwordctroler = TextEditingController();
  final _SINGUPkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
            child: Text(
          'LOGIN SCREEN',
          style: TextStyle(color: Color.fromARGB(255, 241, 217, 217)),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _SINGUPkey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: _namectroler,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'not valid';
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_4),
                      label: Text(
                        'ENTER NAME',
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ))),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _passwordctroler,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'not valid';
                    }
                    return null;
                  },
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      label: Text(
                        'ENTER  PASSWORD',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                ),
                SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_SINGUPkey.currentState!.validate()) {
                        print(_namectroler);
                        print(_passwordctroler);

                        checklogin(context);
                      } else {
                        print('data empty');
                      }
                    },
                    child: Text('LOGIN')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checklogin(BuildContext context) async {
    final _username = _namectroler.text;
    final _password = _passwordctroler.text;

    if (_username == 'shibil' && _password == 'asas') {
    //   final _sharedfrs = await SharedPreferences.getInstance();
    //  await _sharedfrs.setBool(SAVEKEY, true);

      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((context) => HomeScreen())));
    } else {
      showDialog(
          context: context,
          builder: (ctx1) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('User passward doesnot match'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx1).pop();
                  },
                  child: Text('close'),
                )
              ],
            );
          });
    }
  }
}
