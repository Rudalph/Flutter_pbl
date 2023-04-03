import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TsunamisScreen extends StatefulWidget {
  @override
  _TsunamisScreenState createState() => _TsunamisScreenState();
}

class _TsunamisScreenState extends State<TsunamisScreen> {
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
        "\n\nDO and DONT'S\n\n• You should find out if your home, school, workplace, or other frequently visited locations are in tsunami hazard areas along sea-shore.\n• Know the height of your street above sea level and the distance of your street from the coast or other high-risk waters. (Local administration may put sign boards).\n• Plan evacuation routes from your home, school, workplace, or any other place you could be where tsunamis present a risk.\n• If your children's school is in an identified inundation zone, find out what the school evacuation plan is.\n• Use a Weather Radio or stay tuned to a local radio or television station to keep informed of local watches and warnings.\n• Discuss tsunamis with your family.Everyone should know what to do in a tsunami situation. Discussing tsunamis ahead of time will help reduce fear and save precious time in an emergency. Review flood safety and preparedness measures with your family.\n• Talk to your insurance agent.Homeowners' policies may not cover flooding from a tsunami. Ask the Insurance Agent about the benefits from Multi-Hazard Insurance Schemes.\n";
    return text;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CYCLONE",
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
