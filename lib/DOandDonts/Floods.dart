import 'package:flutter/material.dart';

class FloodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FLOODS"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          Text("You should: in order to get ready for a flood.",
              style: TextStyle(fontSize: 25)),
          SizedBox(height: 20),
          Text(
              "Build away from floodplains unless you can elevate and strengthen your house.",
              style: TextStyle(fontSize: 25)),
          Text(
              "If the furnace, water heater, and electrical panel are at risk of flooding, elevate them.",
              style: TextStyle(fontSize: 25)),
          Text(
              "Install 'Check Valves' in sewer traps to stop water from flooding your home's drains.",
              style: TextStyle(fontSize: 25)),
          Text(
              "If you want to know if your community will build levees, beams, or floodwalls to prevent floodwater from invading your homes, get in touch with the local government.",
              style: TextStyle(fontSize: 25)),
          Text(
              "To prevent seepage, use waterproofing chemicals to seal the basement walls.",
              style: TextStyle(fontSize: 25)),
          SizedBox(height: 20),
          Text("If you live in a region where flooding is likely, you should:",
              style: TextStyle(fontSize: 25)),
          SizedBox(height: 20),
          Text("For information, turn on the radio or television.",
              style: TextStyle(fontSize: 25)),
          Text(
              "Recognize the possibility of flash flooding. Move if there's a chance of a flash flood.",
              style: TextStyle(fontSize: 25)),
        ],
      ),
    );
  }
}
