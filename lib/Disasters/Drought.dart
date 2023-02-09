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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.warning, size: 30, color: Colors.red),
                  SizedBox(width: 15),
                  Text(
                    'DROUGHTS',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
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
                'Drought is defined as either the absence or deficit of rainfall relative to the region\'s usual pattern over a protracted period of time, which causes overall hardship in the community. The demand that people have for the natural water supply and the natural occurrence that supplies the water in a particular geographic area interact. All climatic regimes experience drought, which is a regular occurrence that is often classified by its extent in space, intensity, and length.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
