import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
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
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    child: Text("Go to next screen"),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => NextScreen()),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' Do\'s  and Donts'),
        ),
        body: Container(
          child: Text("Do\'s and Dont\'s Screen "),
        ));
  }
}
