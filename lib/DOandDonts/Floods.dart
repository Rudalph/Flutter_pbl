import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class FloodScreen extends StatefulWidget {
  @override
  _FloodScreenState createState() => _FloodScreenState();
}

class _FloodScreenState extends State<FloodScreen> {
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
        "\n\nDO and DONT'S\n\n• Build away from floodplains unless you can elevate and strengthen your house.\n• If the furnace, water heater, and electrical panel are at risk of flooding, elevate them.\n• You should: in order to get ready for a flood.\n• Install 'Check Valves' in sewer traps to stop water from flooding your home's drains.\n• If you want to know if your community will build levees, beams, or floodwalls to prevent floodwater from invading your homes, get in touch with the local government.\n• To prevent seepage, use waterproofing chemicals to seal the basement walls.\nIf you live in a region where flooding is likely, you should:\n\n• For information, turn on the radio or television.\n• Recognize the possibility of flash flooding. Move if there's a chance of a flash flood.\n";
    return text;
  }

  @override
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
