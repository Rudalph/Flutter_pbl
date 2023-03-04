import 'package:flutter/material.dart';

class DisasterEarthquakeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Earthquake",
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
                  'EARTHQUAKE',
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
                      'An earthquake is a phenomena that happens suddenly and causes the ground and everything on it to shake violently. It happens when accumulated stress from shifting crustal or lithospheric plates is released. Seven big, roughly 50-mile-thick plates make up the earth\'s crust, and there are several smaller plates as well. These plates move slowly and continually over the interior of the planet. Earthquakes have tectonic origins, meaning that shifting plates are to blame for the occurrence of strong tremors. The occurrence of an earthquake in a crowded region may result in multiple fatalities, serious injuries, and significant property damage. India is at significant risk due to its growing population and the numerous haphazard construction projects that are springing up all across the country, including multistory luxury flats, enormous factories, enormous malls, and supermarkets, as well as warehouses and brick buildings. Ten significant earthquakes that struck the nation over the course of the previous 15 years had killed over 20,000 people. According to the country\'s most recent seismic zone map (IS 1893: 2002), more than 59% of India\'s land area is at risk of moderate to severe seismic hazard, meaning it is vulnerable to shaking of MSK Intensity VII and above (BMTPC, 2006). In fact, the entire Himalayan belt is thought to be vulnerable to large earthquakes with a magnitude more than 8.0; in a relatively short period of time, or roughly 50 years, four such earthquakes have occurred.',
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
