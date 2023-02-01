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
      ),
      body: ListView.builder(
        itemCount: items.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return SizedBox(height: 20);
          } else if (index == 1) {
            return Text("DO and DONT:", style: TextStyle(fontSize: 25));
          } else {
            return Column(
              children: [
                SizedBox(height: 20),
                Text(items[index - 2], style: TextStyle(fontSize: 25)),
              ],
            );
          }
        },
      ),
    );
  }
}
