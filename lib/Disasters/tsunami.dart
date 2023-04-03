import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class DisasterTsunamiScreen extends StatefulWidget {
  _DisasterTsunamiScreenState createState() => _DisasterTsunamiScreenState();
}

class _DisasterTsunamiScreenState extends State<DisasterTsunamiScreen> {
  String headText = "TSUNAMI";
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
        '\n\nThe plates that move across the surface of the planet are separate chunks of the lithosphere that make up the Earth. Depending on how they are classified, there are seven or eight major plates and numerous lesser plates. The forces that the plates produce at their boundaries, where they touch one another, and the flow of the mantle rock beneath the plates are what propel this motion. Because of the stress and friction along the margins of the plates, which prevents them from slipping smoothly at their boundaries, earthquakes occur when plates move in relation to one another. There is no other method to compel one plate to dive beneath another but with some component of vertical motion, which causes a tsunami. \n\nYou should determine whether your home, place of employment, or any other frequently visited destinations are located in a tsunami hazard area near the coast. \n\nKnow how high your street is above sea level and how far it is from the coast or other potentially dangerous areas of the water. (Local government may erect sign boards.) \n\nPlan escape routes from your house, place of employment, or any other location where you might be at risk from a tsunami. \n\nFind out the school\'s evacuation plan if the building is within a designated inundation zone. \n\nExercise your escape routes. \n\nTo learn about local watches and warnings, use a weather radio or keep your radio or television tuned to a nearby station. \n\nSpeak to your insurance representative. \n\nFlooding from a storm may not be covered by homeowner\'s insurance.\n\nEMERGENCY KIT:\n- Battery operated torch\n- Extra batteries\n- Battery operated radio\n- First aid kit and essential medicines\n- Important papers (Ration card, Voter ID card, Aadhar card etc)\n- Emergency food (dry items) and water (packed and sealed)\n- Candles and matches in a waterproof container\n- Knife\n- Chlorine tablets or powdered water purifiers\n- Cash, Aadhar Card, and Ration Card\n- Thick ropes and cords\n- Shoes';
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TSUNAMI",
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
