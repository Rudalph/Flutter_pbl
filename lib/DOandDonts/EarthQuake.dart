import 'package:flutter/material.dart';

class EarthquakeScreen extends StatelessWidget {
  final List<String> items = [
    "a battery-operated flashlight with extras",
    "powered by batteries radio",
    "handbook and first-aid kit",
    "Water and dry goods for emergencies (packed and sealed)",
    "a waterproof container with matches and candles a knife",
    "Tablets or powdered water filters with chlorine",
    "open a can.",
    "necessary medications",
    "Credit cards and cash",
    "hefty cords and ropes",
    "sturdy footwear"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EARTHQUAKE"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              'DO and DONT:',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 20),
                      Text(items[index], style: TextStyle(fontSize: 25)),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
