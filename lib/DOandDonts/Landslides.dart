import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class LandslidesScreen extends StatefulWidget {
  @override
  _LandslidesScreenState createState() => _LandslidesScreenState();
}

class _LandslidesScreenState extends State<LandslidesScreen> {
  String headText = "LANDSLIDES";
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
        "\n\nDO and DONT'S\n\n• Prepare tour to hilly region according to information given by weather department or news channel.\n• Identify areas of rock fall and subsidence of buildings, cracks that indicate landslides and move to safer areas. Even muddy river waters indicate landslides upstream.\n• Ensure that toe of slope is not cut, remains protected, don't uproot trees unless re-vegetation is planned.\n• Know how to give signs or how to communicate during emergency time to flying helicopters and rescue team.\n•Do not touch or walk over loose material and electrical wiring or pole.\n• Do not drink contaminated water directly from rivers, springs, wells but rain water if collected directly without is fine.\n• Do not move an injured person without rendering first aid unless the casualty is in immediate danger.\n Try to avoid construction and staying in vulnerable areas.";
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
