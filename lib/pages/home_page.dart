import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydemo4/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  String id='home_page';
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, DetailPage().id);
              },
              child: Text("ButtonOne"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, DetailPage().id);
              },
              child: Text("ButtonTwo"),
            ),
          ],
        ),
      ),
    );
  }
}
