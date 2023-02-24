import 'package:dis_man_sym/DisastersScreen.dart';
import 'package:dis_man_sym/rainfallAlert.dart';
import 'package:flutter/material.dart';
import 'DoandDontScreen.dart';
import 'alerts.dart';
import 'weatherforecast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Disaster Management System",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Dis Man Sym'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple,
              Colors.blue,
            ],
          ),
        ),
        child: Column(
          children: [
            WeatherScreen(),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 48.0,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DisastersScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.purple,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      icon: Icon(Icons.warning),
                      label: Text('Disasters'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 48.0,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DoandDontScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.purple,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      icon: Icon(Icons.check_circle_outline),
                      label: Text('Do\'s & Dont\'s'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 48.0,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => alerts()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.purple,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      icon: Icon(Icons.notification_important),
                      label: Text('Alerts'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 48.0,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => WeatherForecast()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.purple,
                        textStyle:
                            TextStyle(fontSize: 20.0, fontFamily: 'Raleway'),
                      ),
                      icon: Icon(Icons.cloud),
                      label: Text('Weather Forecast'),
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
