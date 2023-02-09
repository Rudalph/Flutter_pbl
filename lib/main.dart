import 'package:dis_man_sym/DisastersScreen.dart';
import 'package:dis_man_sym/rainfallAlert.dart';
import 'package:flutter/material.dart';
import 'DoandDontScreen.dart';
import 'alerts.dart';

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
        backgroundColor: Colors.white38,
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    foregroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DisastersScreen()),
                  );
                },
                child: const Text("Disasters",
                    style: TextStyle(color: Colors.black)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  child: const Text("Do's & Dont's"),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DoandDontScreen()),
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    foregroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WeatherScreen()),
                  );
                },
                child: const Text("Weather info",
                    style: TextStyle(color: Colors.black)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  child: const Text("Alerts"),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => alerts()),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
