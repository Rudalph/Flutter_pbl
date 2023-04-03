import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class CycloneScreen extends StatefulWidget {
  @override
  _CycloneScreenState createState() => _CycloneScreenState();
}

class _CycloneScreenState extends State<CycloneScreen> {
  String headText = "CYCLONE";
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
        "\n\nDO and DONT'S\n\n• Check the house; secure loose tiles and carry out repairs of doors and windows.\n• Remove dead branches or dying trees close to the house; anchor removable objects such as lumber piles, loose tin sheets, loose bricks, garbage cans, sign-boards etc. which can fly in strong winds\n• Listen to the radio (All India Radio stations give weather warnings)..\n• Keep monitoring the warnings. This will help you prepare for a cyclone emergency.\n• Ignore rumours and do not spread them; this will help to avoid panic situations.\n• When a cyclone alert is on for your area continue normal working but stay alert to the radio warnings.\n Stay alert for the next 24 hours as a cyclone alert means that the danger is within 24 hours.\n• If your house is securely built on high ground take shelter in the safe part of the house. However, if asked to evacuate do not hesitate to leave the place.\n• Ensure that your hurricane lantern, torches or other emergency lights are in working condition and keep them handy.\n";
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
