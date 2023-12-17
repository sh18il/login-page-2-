import 'package:flutter/material.dart';
import 'package:prjctlog/loginscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List movieList = [
    {'movie': 'BIg B', 'actor': 'mammutty'},
    {'movie': 'NARAN', 'actor': 'mohanlaal'},
    {'movie': 'CID MOOSA', 'actor': 'dileep'},
    {'movie': 'MINNAL MURALI', 'actor': 'tovino'},
    {'movie': 'BIg B', 'actor': 'mammutty'},
    {'movie': 'NARAN', 'actor': 'mohanlaal'},
    {'movie': 'CID MOOSA', 'actor': 'dileep'},
    {'movie': 'MINNAL MURALI', 'actor': 'tovino'},
    {'movie': 'BIg B', 'actor': 'mammutty'},
    {'movie': 'NARAN', 'actor': 'mohanlaal'},
    {'movie': 'CID MOOSA', 'actor': 'dileep'},
    {'movie': 'MINNAL MURALI', 'actor': 'tovino'},
    {'movie': 'BIg B', 'actor': 'mammutty'},
    {'movie': 'NARAN', 'actor': 'mohanlaal'},
    {'movie': 'CID MOOSA', 'actor': 'dileep'},
    {'movie': 'MINNAL MURALI', 'actor': 'tovino'},
    {'movie': 'BIg B', 'actor': 'mammutty'},
    {'movie': 'NARAN', 'actor': 'mohanlaal'},
    {'movie': 'CID MOOSA', 'actor': 'dileep'},
    {'movie': 'MINNAL MURALI', 'actor': 'tovino'},
    {'movie': 'BIg B', 'actor': 'mammutty'},
    {'movie': 'NARAN', 'actor': 'mohanlaal'},
    {'movie': 'CID MOOSA', 'actor': 'dileep'},
    {'movie': 'MINNAL MURALI', 'actor': 'tovino'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
            child: Text(
          'HOME SCREEN',
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          IconButton(
            onPressed: () {
              singout(context);
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Color.fromARGB(224, 26, 30, 23),
              title: Text(
                movieList[index]['movie'],
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                movieList[index]['actor'],
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.movie,
                color: Colors.red,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white30,
              ),
            );
          },
        ),
        
      ),
    
    );
  }

  void singout( context) async {
   

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (route) => false);
  }
}
