import 'package:flutter/material.dart';

class DisasterLandslideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Landslides",
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
                  'LANDSLIDES',
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
                      "The Himalayas, the world's tallest mountain range, are located in India. They were created when the Indian and Eurasian plates collided, and as the Indian plate moves northward toward China, it continuously stresses the rocks, making them weak, friable, and vulnerable to earthquakes and landslides. Natural disasters are thought to be caused by tension that is accumulated due to the Indian crust's slow motion of 5 cm each year. Some landslides cause catastrophes that are singular and unmatched. Along with the Himalayas, the Northeastern hill ranges, the Western Ghats, the Nilgiris, the Eastern Ghats, and the Vindhyans, which together make up roughly 15% of the continent, landslides and avalanches are among the main hydro-geological hazards that significantly affect broad areas of India. Countless landslides of every kind, name, and description can be found in the Himalayas alone.",
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
