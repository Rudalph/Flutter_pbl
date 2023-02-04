import "package:flutter/material.dart";
import 'Disasters/Earthquake.dart';
import 'Disasters/Drought.dart';
import 'Disasters/cyclone.dart';
import 'Disasters/floods.dart';
import 'Disasters/landslides.dart';
import 'Disasters/tsunami.dart';

class DisastersScreen extends StatelessWidget {
  const DisastersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disasters'),
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
                      MaterialPageRoute(
                          builder: (context) => DisasterEarthquakeScreen()),
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DisasterFloodScreen()),
                    );
                  },
                  child: Text("FLOODS"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DisasterLandslideScreen()),
                    );
                  },
                  child: Text("LANDSLIDES"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DisasterCycloneScreen()),
                    );
                  },
                  child: Text("CYCLONE"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DisaterTsunamiScreen()),
                    );
                  },
                  child: Text("TSUNAMI"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => DisasterDroughtScreen()),
                    );
                  },
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
