import 'package:flutter/material.dart';

class DisasterDroughtScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drought",
          style: TextStyle(fontFamily: 'Raleway'),
        ),
        backgroundColor: Color.fromARGB(255, 236, 171, 118),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 236, 171, 118), Color(0xFFEE4D5F)],
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'DROUGHT',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Raleway',
                    color: Colors.white,
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
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Raleway',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Drought is defined as either the absence or deficit of rainfall relative to the region\'s usual pattern over a protracted period of time, which causes overall hardship in the community. The demand that people have for the natural water supply and the natural occurrence that supplies the water in a particular geographic area interact. All climatic regimes experience drought, which is a regular occurrence that is often classified by its extent in space, intensity, and length.Mechanisms of producing precipitation include convective, stratiform, and orographic rainfall. Convective processes involve strong vertical motions that can cause the overturning of the atmosphere in that location within an hour and cause heavy precipitation, while stratiform processes involve weaker upward motions and less intense precipitation over a longer duration. Precipitation can be divided into three categories, based on whether it falls as liquid water, liquid water that freezes on contact with the surface, or ice. Droughts occur mainly in areas where normal levels of rainfall are, in themselves, low.',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'EMERGENCY KIT:',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Raleway',
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '- Battery operated torch\n- Extra batteries\n- Battery operated radio\n- First aid kit and essential medicines\n- Important papers (Ration card, Voter ID card, Aadhar card etc)\n- Emergency food (dry items) and water (packed and sealed)\n- Candles and matches in a waterproof container\n- Knife\n- Chlorine tablets or powdered water purifiers\n- Cash, Aadhar Card, and Ration Card\n- Thick ropes and cords\n- Shoes',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Raleway',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
