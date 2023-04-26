import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class DroughtScreen extends StatefulWidget {
  @override
  _DroughtScreenState createState() => _DroughtScreenState();
}

class _DroughtScreenState extends State<DroughtScreen> {
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
        "\n\nDO and DONT'S\n\n• Listen to radio, watch TV and read newspapers for warnings, updates and instructions.\n• Excavate deep pits to help increase groundwater table.\n• Encouragement of afforestation with subabul, seemaruba, casurina, and eucalyptus.\n• Use wet clothes to clean and scrub floors instead of using running water.\n• Do not mess with traditional water sources such as ponds, annicuts, well,tanks, etc.\n• Do not waste rainwater collected on rooftops, etc. \n• Put used domestic water to use by watering grasses and plants.\n• Do not cut trees and forests and do not waste water.\n• Use wet clothes to clean and scrub floors instead of using running water.\n• Do not mess with traditional water sources such as ponds, annicuts, well,tanks, etc.\n• Do not waste rainwater collected on rooftops, etc. \n• Put used domestic water to use by watering grasses and plants.\n• Do not cut trees and forests and do not waste water.\n";
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
