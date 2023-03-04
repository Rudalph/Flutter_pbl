// ignore_for_file: prefer_const_constructors

import 'package:dis_man_sym/DOandDonts/Floods.dart';
import 'package:dis_man_sym/DOandDonts/Landslides.dart';
import 'package:dis_man_sym/DOandDonts/cyclone.dart';
import 'package:dis_man_sym/DOandDonts/tsunami.dart';
import 'package:flutter/material.dart';
import 'DOandDonts/EarthQuake.dart';
import 'DOandDonts/Drought.dart';
import 'package:humanitarian_icons/humanitarian_icons.dart';

class DoandDontScreen extends StatelessWidget {
  const DoandDontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          ' Do\'s  and Dont\'s',
          style: TextStyle(fontFamily: 'Raleway'),
        ),
        backgroundColor: Color(0xFFEE4D5F),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFEE4D5F), Color.fromARGB(255, 236, 171, 118)],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 80.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 248, 149, 149).withOpacity(0.5),
                          Color.fromARGB(255, 248, 149, 149).withOpacity(0.5)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => CycloneScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        onPrimary: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Cyclone"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 248, 149, 149).withOpacity(0.5),
                          Color.fromARGB(255, 248, 149, 149).withOpacity(0.5)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => FloodScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        onPrimary: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Flood"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 248, 149, 149).withOpacity(0.5),
                          Color.fromARGB(255, 248, 149, 149).withOpacity(0.5)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => LandslidesScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        onPrimary: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Landslide"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 248, 149, 149).withOpacity(0.5),
                          Color.fromARGB(255, 248, 149, 149).withOpacity(0.5)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => EarthquakeScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        onPrimary: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Earthquake"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2),
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => TsunamisScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        onPrimary: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Tsunami"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2),
                          Color.fromARGB(255, 255, 225, 200).withOpacity(0.2)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DroughtScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                        onPrimary: Colors.white,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      child: Text(
                          "Drought"), // use Text widget instead of icon and label
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
