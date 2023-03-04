import 'package:flutter/material.dart';

class DisasterTsunamiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tsunami",
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
                  'TSUNAMI',
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
                      'The plates that move across the surface of the planet are separate chunks of the lithosphere that make up the Earth. Depending on how they are classified, there are seven or eight major plates and numerous lesser plates. The forces that the plates produce at their boundaries, where they touch one another, and the flow of the mantle rock beneath the plates are what propel this motion. Because of the stress and friction along the margins of the plates, which prevents them from slipping smoothly at their boundaries, earthquakes occur when plates move in relation to one another. There is no other method to compel one plate to dive beneath another but with some component of vertical motion, which causes a tsunami. \n\nYou should determine whether your home, place of employment, or any other frequently visited destinations are located in a tsunami hazard area near the coast. \n\nKnow how high your street is above sea level and how far it is from the coast or other potentially dangerous areas of the water. (Local government may erect sign boards.) \n\nPlan escape routes from your house, place of employment, or any other location where you might be at risk from a tsunami. \n\nFind out the school\'s evacuation plan if the building is within a designated inundation zone. \n\nExercise your escape routes. \n\nTo learn about local watches and warnings, use a weather radio or keep your radio or television tuned to a nearby station. \n\nSpeak to your insurance representative. \n\nFlooding from a storm may not be covered by homeowner\'s insurance.',
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
