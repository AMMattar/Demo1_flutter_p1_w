import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Demo APP'),
            ),
            body: ListView(
              children: [
                Center(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Image(image: AssetImage("assets/1.png")),
                    ),
                  ]),
                ),
                Center(
                  child: Container(
                      alignment: Alignment(1, 1),
                      child: Text(
                        "مفضلتي",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      )),
                ),
                Center(
                  child: Row(children: [
                    Container(
                      //margin: EdgeInsets.all(8.0),
                      child: Image(image: AssetImage("assets/2.png")),
                    ),
                  ]),
                ),
                Center(
                  child: Container(
                      alignment: Alignment(1, 1),
                      child: Text(
                        "البحث عن حالة",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      )),
                ),
                Center(
                  child: Row(children: [
                    Container(
                      //margin: EdgeInsets.all(8.0),
                      child: Image(image: AssetImage("assets/3.png")),
                    ),
                  ]),
                ),
              ],
            )));
  }
}
