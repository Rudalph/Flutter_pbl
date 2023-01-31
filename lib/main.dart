// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Disaster Management System",
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              "Dis-Man-Sym",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.purple,
            leading: const Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          body: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100, left: 75),
                height: 100,
                width: 100,
                color: Colors.purple,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Disasters",
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100, left: 100),
                height: 100,
                width: 100,
                color: Colors.purple,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    child: const Text("Do's & Dont's"),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DoandDontScreen()),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}

class DoandDontScreen extends StatelessWidget {
  const DoandDontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Do\'s  and Donts'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("EarthQuake"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("FLOODS"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("LANDSLIDES"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("CYCLONE"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("TSUNAMI"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("DROUGHT"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                )),
          ],
        ),
      ),
    );
  }
}

class Earthquake extends StatelessWidget {
  const Earthquake({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Do\'s  and Donts'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: <Widget>[
          Center(
              child: Text(
            "Earthquake",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )),
        ],
      ),
    );
  }
}
