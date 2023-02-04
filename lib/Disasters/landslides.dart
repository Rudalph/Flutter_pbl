import 'package:flutter/material.dart';

class DisasterLandslideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LANDSLIDES"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Text(
                _textData[index],
                style: TextStyle(fontSize: 25),
              ),
              itemCount: _textData.length,
            ),
          ),
        ],
      ),
    );
  }

  static const _textData = [
    "INFO:-",
    "The Himalayas, the world's tallest mountain range, are located in India. They were created when the Indian and Eurasian plates collided, and as the Indian plate moves northward toward China, it continuously stresses the rocks, making them weak, friable, and vulnerable to earthquakes and landslides. Natural disasters are thought to be caused by tension that is accumulated due to the Indian crust's slow motion of 5 cm each year. Some landslides cause catastrophes that are singular and unmatched. Along with the Himalayas, the Northeastern hill ranges, the Western Ghats, the Nilgiris, the Eastern Ghats, and the Vindhyans, which together make up roughly 15% of the continent, landslides and avalanches are among the main hydro-geological hazards that significantly affect broad areas of India. Countless landslides of every kind, name, and description can be found in the Himalayas alone.",
    "Prepare for your trip to a mountainous area using the weather forecast or news reports.",
    "Without wasting time, move away from the landslide's path or the valleys downstream.",
    "Maintain clean drains and check them for debris such as trash, leaves, plastic bags, and other items.",
    "Weep holes should remain open.",
    "Increase the number of trees with roots that can hold soil,",
    "Find regions where rocks are falling or where structures are sinking, look for cracks that suggest landslides, and relocate to safer areas. Landslides upstream are evident even in muddy river waters.",
    "When you see such signals, get in touch with the nearby Tehsil or District Head Office.",
    "Make sure the slope's toe is protected, not chopped, and that no trees be uprooted unless re-vegetation is intended.",
    "Keep an ear out for odd noises like rocks crashing together or trees breaking.",
    "EMERGENCY KIT:-",
    "Battery operated torch",
    "Extra batteries",
    "Battery operated radio",
    "First aid kit and manual",
    "Emergency food (dry items) and water (packed and sealed)",
    "Candles and matches in a waterproof container",
    "Knife",
    "Chlorine tablets or powdered water purifiers",
    "Can opener.",
    "Essential medicines",
    "Cash, Aadhar Card and Ration Card",
    "Thick ropes and cords",
    "Sturdy shoes",
  ];
}
