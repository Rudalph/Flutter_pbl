import 'package:flutter/material.dart';

class DisasterDroughtScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DROUGHTS'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Drought is defined as either the absence or deficit of rainfall relative to the region\'s usual pattern over a protracted period of time, which causes overall hardship in the community. The demand that people have for the natural water supply and the natural occurrence that supplies the water in a particular geographic area interact. All climatic regimes experience drought, which is a regular occurrence that is often classified by its extent in space, intensity, and length.Mechanisms of producing precipitation include convective, stratiform, and orographic rainfall. Convective processes involve strong vertical motions that can cause the overturning of the atmosphere in that location within an hour and cause heavy precipitation, while stratiform processes involve weaker upward motions and less intense precipitation over a longer duration. Precipitation can be divided into three categories, based on whether it falls as liquid water, liquid water that freezes on contact with the surface, or ice. Droughts occur mainly in areas where normal levels of rainfall are, in themselves, low.',
                    style: TextStyle(fontSize: 25),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 25),
          Text(
            'Definition:',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Drought is a prolonged dry period in the natural climate cycle that can occur anywhere in the world. It is a slow-onset disaster characterized by the lack of precipitation, resulting in a water shortage. Drought can have a serious impact on health, agriculture, economies, energy and the environment.',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
