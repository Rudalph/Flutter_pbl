import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class DisasterDroughtScreen extends StatefulWidget {
  _DisasterDroughtScreenState createState() => _DisasterDroughtScreenState();
}

class _DisasterDroughtScreenState extends State<DisasterDroughtScreen> {
  String headText = "DROUGHT";
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
        '\n\nDrought is defined as either the absence or deficit of rainfall relative to the region\'s usual pattern over a protracted period of time, which causes overall hardship in the community. The demand that people have for the natural water supply and the natural occurrence that supplies the water in a particular geographic area interact. All climatic regimes experience drought, which is a regular occurrence that is often classified by its extent in space, intensity, and length.Mechanisms of producing precipitation include convective, stratiform, and orographic rainfall. Convective processes involve strong vertical motions that can cause the overturning of the atmosphere in that location within an hour and cause heavy precipitation, while stratiform processes involve weaker upward motions and less intense precipitation over a longer duration. Precipitation can be divided into three categories, based on whether it falls as liquid water, liquid water that freezes on contact with the surface, or ice. Droughts occur mainly in areas where normal levels of rainfall are, in themselves, low.\n\nEMERGENCY KIT:\n- Battery operated torch\n- Extra batteries\n- Battery operated radio\n- First aid kit and essential medicines\n- Important papers (Ration card, Voter ID card, Aadhar card etc)\n- Emergency food (dry items) and water (packed and sealed)\n- Candles and matches in a waterproof container\n- Knife\n- Chlorine tablets or powdered water purifiers\n- Cash, Aadhar Card, and Ration Card\n- Thick ropes and cords\n- Shoes';
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DROUGHT",
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
