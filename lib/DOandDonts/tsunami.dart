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
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "For up-to-date emergency information, you should keep listening to your weather radio, tuning in to a Coast Guard emergency frequency station, or watching local radio or television.\n"
                    "Before assisting others who are hurt or trapped, make sure you have no injuries and get first aid if you do.\n"
                    "If someone has to be saved, contact experts who have the necessary tools. Attempting to rescue others in flooded situations has resulted in many deaths or serious injuries.\n"
                    "Help those who need particular support: children, the elderly, those without access to transportation, large families who could require more aid in an emergency, those with impairments, and those who look after them.",
                    style: TextStyle(fontSize: 25),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
