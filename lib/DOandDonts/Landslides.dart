import 'package:flutter/material.dart';

class LandslidesScreen extends StatelessWidget {
  final List<String> items = [
    "Avoid staying in unsafe regions and avoiding construction zones.",
    "Do not lose energy by crying out of panic.",
    "Avoid touching or stepping on exposed electrical wiring or poles.",
    "Do not construct homes next to drainage paths or steep slopes.",
    "Drinking contaminated water straight from rivers, springs, or wells is not advised, however rainwater that has been gathered directly from the sky is safe.",
    "If a victim is not in immediate danger, do not transfer them without first aiding them.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LANDSLIDES"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
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
