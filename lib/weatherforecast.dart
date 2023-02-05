import 'package:flutter/material.dart';

class WeatherForecastScreen extends StatelessWidget {
  final dynamic weatherData;

  WeatherForecastScreen({this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next 24 hours Forecast'),
      ),
      body: weatherData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: weatherData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      '${weatherData[index]['weather'][0]['description']}'),
                  subtitle: Text('${weatherData[index]['main']['temp']}°F'),
                );
              },
            ),
    );
  }
}
