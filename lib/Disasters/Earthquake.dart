import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class DisasterEarthquakeScreen extends StatefulWidget {
  _DisasterEarthquakeScreenState createState() =>
      _DisasterEarthquakeScreenState();
}

class _DisasterEarthquakeScreenState extends State<DisasterEarthquakeScreen> {
  String headText = "EARTHQUAKE";
  final translator = GoogleTranslator();
  String _translatedText = "";
  String _selectedLanguage = "en"; // Default language is English

  List<PopupMenuEntry<String>> _buildLanguageMenuItems() {
    return [
      PopupMenuItem<String>(
        value: "en",
        child: Text("English"),
      ),
      PopupMenuItem<String>(
        value: "hi",
        child: Text("Hindi"),
      ),
      PopupMenuItem<String>(
        value: "mr",
        child: Text("Marathi"),
      ),
    ];
  }

  Future<void> _translateText() async {
    String textToTranslate = "";
    setState(() {
      textToTranslate = getTextToTranslate();
    });
    Translation translation =
        await translator.translate(textToTranslate, to: _selectedLanguage);
    setState(() {
      _translatedText = translation.text;
    });
  }

  String getTextToTranslate() {
    String text = "";
    text = headText +
        '\n\nAn earthquake is a phenomena that happens suddenly and causes the ground and everything on it to shake violently. It happens when accumulated stress from shifting crustal or lithospheric plates is released. Seven big, roughly 50-mile-thick plates make up the earth\'s crust, and there are several smaller plates as well. These plates move slowly and continually over the interior of the planet. Earthquakes have tectonic origins, meaning that shifting plates are to blame for the occurrence of strong tremors. The occurrence of an earthquake in a crowded region may result in multiple fatalities, serious injuries, and significant property damage. India is at significant risk due to its growing population and the numerous haphazard construction projects that are springing up all across the country, including multistory luxury flats, enormous factories, enormous malls, and supermarkets, as well as warehouses and brick buildings. Ten significant earthquakes that struck the nation over the course of the previous 15 years had killed over 20,000 people. According to the country\'s most recent seismic zone map (IS 1893: 2002), more than 59% of India\'s land area is at risk of moderate to severe seismic hazard, meaning it is vulnerable to shaking of MSK Intensity VII and above (BMTPC, 2006). In fact, the entire Himalayan belt is thought to be vulnerable to large earthquakes with a magnitude more than 8.0; in a relatively short period of time, or roughly 50 years, four such earthquakes have occurred.';
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EARTHQUAKE",
          style: TextStyle(fontFamily: 'Raleway'),
        ),
        backgroundColor: Color.fromARGB(255, 236, 171, 118),
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<String>(
            icon: Icon(Icons.translate),
            onSelected: (language) {
              setState(() {
                _selectedLanguage = language;
              });
              _translateText(); // Call _translateText() to update the translated text
            },
            itemBuilder: (BuildContext context) {
              return _buildLanguageMenuItems();
            },
          ),
        ],
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
                  _translatedText.isEmpty
                      ? getTextToTranslate()
                      : _translatedText,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Raleway',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
