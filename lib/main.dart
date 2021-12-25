import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var textIndex = 0;
  void testFunc() {
    Future.delayed(const Duration(milliseconds: 3500), () {
// Here you can write your code

      setState(() {
        // Here you can write your code for open new view
        textIndex = 1;
      });
    });
  }

  @override
  var test = ListView(
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
  );

  var test1 = Image(
    image: AssetImage("assets/1.png"),
    fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center,
  );

  Widget build(BuildContext context) {
    var newTest2 = [test1, test];
    testFunc();
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Demo APP'),
            ),
            body: newTest2[textIndex]));
  }
}
