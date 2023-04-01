import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class DisasterFloodScreen extends StatefulWidget {
  _DisasterFloodScreenState createState() => _DisasterFloodScreenState();
}

class _DisasterFloodScreenState extends State<DisasterFloodScreen> {
  String headText = "FLOOD";
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
        '\n\nA low-pressure area characterized by rapid and frequently damaging air circulation is what generates cyclones. Storms and unfavorable weather are frequently present during cyclones. In the Northern hemisphere, the air moves anticlockwise, whereas in the Southern hemisphere, it moves clockwise. Extra tropical cyclones, sometimes known as temperate cyclones, and tropical cyclones are the two categories under which cyclones fall. The name "cyclone" comes from the Greek word "cyclos," which means a snake\'s coils. Henry Peddington came up with the term because tropical storms in the Arabian Sea and Bay of Bengal resemble coiled sea serpents.\n\nThe development cycle of tropical cyclones may be divided into three stages:\n\nFormation and Initial Development Stage The formation and initial development of a cyclonic storm depends upon various conditions. These are:\n\nA warm sea (a temperature in excess of 26 degrees Celsius to a depth of 60 m) with abundant and turbulent transfer of water vapor to the overlying atmosphere by evaporation.\nAtmospheric instability encouraging formation of massive vertical cumulus clouds due to convection with condensation of rising air above ocean surface.\n\nEMERGENCY KIT:\n- Battery operated torch\n- Extra batteries\n- Battery operated radio\n- First aid kit and essential medicines\n- Important papers (Ration card, Voter ID card, Aadhar card etc)\n- Emergency food (dry items) and water (packed and sealed)\n- Candles and matches in a waterproof container\n- Knife\n- Chlorine tablets or powdered water purifiers\n- Cash, Aadhar Card, and Ration Card\n- Thick ropes and cords\n- Shoes';
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flood",
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
