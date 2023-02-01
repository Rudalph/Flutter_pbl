// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DoandDontScreen extends StatelessWidget {
  const DoandDontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Do\'s  and Donts'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Earthquake()),
                    );
                  },
                  child: Text("EarthQuake"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("FLOODS"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("LANDSLIDES"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("CYCLONE"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("TSUNAMI"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("DROUGHT"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
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
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          // ignore: prefer_const_constructors
          Center(
              child: Text(
            "Earthquake",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          Container(
            child: Text(
                "DO'S & DONT'S:- \n\n"
                "battery-operated flashlight with extra"
                "powered by batteries\n radio "
                "handbook and first-aid kit "
                "Water and dry goods for emergencies (packed and sealed) "
                "a waterproof container with matches and candles a knife "
                "Tablets or powdered water filters with chlorine "
                "open a can ."
                "necessary medications\n"
                "Credit cards and cash\n"
                "hefty cords and ropes \n"
                "sturdy footwear",
                style: TextStyle(fontSize: 25)),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(builder: (context) => Earthquake()),
                );
              },
              child: Text("BACK"))
        ],
      ),
    );
  }
}
