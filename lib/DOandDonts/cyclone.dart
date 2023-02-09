import 'package:flutter/material.dart';

class CycloneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CYCLONES"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Preparation Steps:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Check the house, fix any damaged doors or windows, and secure any loose tiles.\n"
                    "Anchor moveable items like timber stacks, loose tin sheets, loose bricks, garbage cans, signboards, and other items that can fly away in strong winds, such as dying or dead trees or branches close to the house.\n"
                    "Keep some wooden boards on hand so that, if necessary, glass windows can be boarded.\n"
                    "Keep adequate dry cells, a hurricane lantern with kerosene, and battery-powered torches handy.\n"
                    "Demolish abandoned structures\n"
                    "Have extra batteries on hand for transistors.\n"
                    "Always have some dry, non-perishable food on hand for emergencies.",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Required Activities:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Following are some general categories for the steps that must be taken in the event of a cyclone threat:\n\n"
                    "Just before the hurricane season\n"
                    "The communication of cyclone alerts and warnings\n"
                    "When it is recommended to evacuate\n"
                    "Once the hurricane has passed over the shore",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
