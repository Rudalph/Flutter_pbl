// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'DoandDontScreen.dart';

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
