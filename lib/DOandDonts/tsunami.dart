import 'package:flutter/material.dart';

class TsunamisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TSUNAMIS"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "For up-to-date emergency information:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "- Keep listening to your weather radio\n"
              "- Tune in to a Coast Guard emergency frequency station\n"
              "- Watch local radio or television",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Before assisting others:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "- Make sure you have no injuries and get first aid if you do.\n"
              "- Contact experts who have the necessary tools.\n"
              "- Avoid attempting to rescue others in flooded situations",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Help those who need support:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "- Children\n"
              "- The elderly\n"
              "- Those without access to transportation\n"
              "- Large families\n"
              "- People with impairments\n"
              "- Those who look after them",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
