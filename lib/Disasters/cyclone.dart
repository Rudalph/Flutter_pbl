import 'package:flutter/material.dart';

class DisasterCycloneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cyclones"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'CYCLONES',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'INFO:',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'A low-pressure area characterized by rapid and frequently damaging air circulation is what generates cyclones. Storms and unfavorable weather are frequently present during cyclones. In the Northern hemisphere, the air moves anticlockwise, whereas in the Southern hemisphere, it moves clockwise. Extra tropical cyclones, sometimes known as temperate cyclones, and tropical cyclones are the two categories under which cyclones fall. The name "cyclone" comes from the Greek word "cyclos," which means a snake\'s coils. Henry Peddington came up with the term because tropical storms in the Arabian Sea and Bay of Bengal resemble coiled sea serpents.\n\nThe development cycle of tropical cyclones may be divided into three stages:\n\nFormation and Initial Development Stage The formation and initial development of a cyclonic storm depends upon various conditions. These are:\n\nA warm sea (a temperature in excess of 26 degrees Celsius to a depth of 60 m) with abundant and turbulent transfer of water vapor to the overlying atmosphere by evaporation.\nAtmospheric instability encouraging formation of massive vertical cumulus clouds due to convection with condensation of rising air above ocean surface.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'EMERGENCY KIT:',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '- Battery operated torch\n- Extra batteries\n- Battery operated radio\n- First aid kit and essential medicines\n- Important papers (Ration card, Voter ID card, Aadhar card etc)\n- Emergency food (dry items) and water (packed and sealed)\n- Candles and matches in a waterproof container\n- Knife\n- Chlorine tablets or powdered water purifiers\n- Cash, Aadhar Card, and Ration Card\n- Thick ropes and cords\n- Shoes',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
