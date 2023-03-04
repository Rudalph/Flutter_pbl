import 'package:flutter/material.dart';

class CycloneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CYCLONES", style: TextStyle(fontFamily: 'Raleway')),
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: <Widget>[
            Text("DO and DONT'S",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
                textAlign: TextAlign.center),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    "• Build away from floodplains unless you can elevate and strengthen your house.",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
                SizedBox(height: 10),
                Text(
                    "• If the furnace, water heater, and electrical panel are at risk of flooding, elevate them.",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
                SizedBox(height: 10),
                Text("• You should: in order to get ready for a flood.",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
                SizedBox(height: 10),
                Text(
                    "• Install 'Check Valves' in sewer traps to stop water from flooding your home's drains.",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
                SizedBox(height: 10),
                Text(
                    "• If you want to know if your community will build levees, beams, or floodwalls to prevent floodwater from invading your homes, get in touch with the local government.",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
                SizedBox(height: 10),
                Text(
                    "• To prevent seepage, use waterproofing chemicals to seal the basement walls.",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
                SizedBox(height: 20),
                Text(
                    "If you live in a region where flooding is likely, you should:",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("• For information, turn on the radio or television.",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w300,
                            color: Colors.white)),
                    SizedBox(height: 10),
                    Text(
                        "• Recognize the possibility of flash flooding. Move if there's a chance of a flash flood.",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w300,
                            color: Colors.white)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
