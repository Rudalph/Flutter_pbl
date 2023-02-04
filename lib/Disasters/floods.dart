import 'package:flutter/material.dart';

class DisasterFloodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FLOODS"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "India is extremely susceptible to flooding. Over 40 million hectares (mha) of the 329 million hectares (mha) total geographic area are at risk of flooding. Floods are a frequent occurrence that result in significant human casualties as well as damage to property, infrastructure, and public services. The fact that flood-related damages are on the rise is cause for alarm. In the past ten years, from 1996 to 2005, the average yearly flood damage was Rs. 4745 crore, compared to Rs. 1805 crore, the corresponding average for the prior 53 years. Numerous factors, such as a sharp rise in population, fast urbanisation, an increase in economic and development activity in flood plains, and global warming, might be blamed for this.",
                        style: TextStyle(fontSize: 25),
                      ),
                    );
                  case 1:
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "75 lakh on average each year Floods have also happened in places that weren't previously thought to be prone to flooding. These Guidelines make an effort to address every aspect of flood management. Rainfall occurs 80% of the time from June to September, during the monsoon season. Heavy loads of silt are transported by rivers from catchments. These, together with rivers' insufficient carrying capacity, are to blame for floods, backed-up drainage systems, and riverbank erosion. Flash floods are caused by cyclones, cyclonic circulations, and cloud bursts, which result in significant losses.",
                        style: TextStyle(fontSize: 25),
                      ),
                    );
                  default:
                    return null;
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "EMERGENCY KIT:-\n\n" +
                  "Battery operated torch\n" +
                  "Extra batteries\n" +
                  "Battery operated radio\n" +
                  "First aid kit and essential medicines\n" +
                  "Emergency food (dry items) and water (packed and sealed)\n" +
                  "Candles and matches in a waterproof container\n" +
                  "Knife\n" +
                  "Chlorine tablets or powdered water\n" +
                  "Important documents (Ration card, Voter ID card, Aadhar Card etc.)\n" +
                  "Cash, Aadhar Card and Ration Card\n" +
                  "Thick ropes and cords\n" +
                  "Shoes",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
