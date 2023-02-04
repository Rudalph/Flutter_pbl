import 'package:flutter/material.dart';

class DisasterEarthquakeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Earthquake'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'An earthquake is a phenomena that happens suddenly and causes the ground and everything on it to shake violently. It happens when accumulated stress from shifting crustal or lithospheric plates is released. Seven big, roughly 50-mile-thick plates make up the earth\'s crust, and there are several smaller plates as well. These plates move slowly and continually over the interior of the planet. Earthquakes have tectonic origins, meaning that shifting plates are to blame for the occurrence of strong tremors. The occurrence of an earthquake in a crowded region may result in multiple fatalities, serious injuries, and significant property damage. India is at significant risk due to its growing population and the numerous haphazard construction projects that are springing up all across the country, including multistory luxury flats, enormous factories, enormous malls, and supermarkets, as well as warehouses and brick buildings. Ten significant earthquakes that struck the nation over the course of the previous 15 years had killed over 20,000 people. According to the country\'s most recent seismic zone map (IS 1893: 2002), more than 59% of India\'s land area is at risk of moderate to severe seismic hazard, meaning it is vulnerable to shaking of MSK Intensity VII and above (BMTPC, 2006). In fact, the entire Himalayan belt is thought to be vulnerable to large earthquakes with a magnitude more than 8.0; in a relatively short period of time, or roughly 50 years, four such earthquakes have occurred.',
                        style: TextStyle(fontSize: 25),
                      ),
                    );
                    break;
                  case 1:
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Emergency Kit:\nFix deep plaster cracks in foundations and ceilings. If there are indications of structural issues, seek professional guidance.\nFixtures for overhead lighting should be ceiling-mounted.\nFor building standards, adhere to the BIS codes that are applicable to your location.\nWall shelves should be firmly fastened.\nPut heavy or big items on lower shelves.\nGlass, china, and other breakable goods should be kept in low, closed cabinets with latches.\nHang bulky furniture, such as photos and mirrors, far from couches, beds, and other seating areas.\nBrace the fan and above lighting fittings.\nFix faulty gas connections and electrical wiring. These could cause a fire.',
                        style: TextStyle(fontSize: 25),
                      ),
                    );
                    break;
                  default:
                    return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
