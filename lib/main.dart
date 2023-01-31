import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Disaster Management System",
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              "Dis-Man-Sym",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.purple,
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          body: Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100, left: 75),
                height: 100,
                width: 100,
                color: Colors.purple,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Disasters",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100, left: 100),
                height: 100,
                width: 100,
                color: Colors.purple,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Do's & Dont's",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
