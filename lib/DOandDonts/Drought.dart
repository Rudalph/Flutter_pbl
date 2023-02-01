import 'package:flutter/material.dart';

class DroughtScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DROUGHTS'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      children: <Widget>[
                        Text(
                          'DO and DONT:',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '- The use of water harvesting and conservation techniques, groundwater artificial recharge, traditional water harvesting and conservation techniques, water-saving technologies like drip irrigation and sprinkler irrigation systems, improved water-saving farming practises, long-term irrigation management, etc.',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          '- Instead of one lengthy burst, water lawns twice for a total of three to four minutes. As a result, runoff is reduced and water may reach the soil and roots more effectively.',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          '- Do not utilise root-based drip irrigation nozzles for drought-tolerant plants; instead, use micro sprayers or another overhead watering method. This resembles their normal water schedule.',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      children: <Widget>[
                        Text(
                          '- Investigating techniques like fodder collection from cereal crops, supplementary irrigation when possible, and assuring seed availability when alternative crops are advantageous with logistic support from state and district machinery',
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
