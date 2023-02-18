import 'package:flutter/material.dart';
import 'weatherapi.dart';
import 'package:intl/intl.dart';

class Weatherforecast extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Weatherforecast> {
  dynamic weatherData;

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  void getWeather() async {
    var data = await WeatherApi.getWeather();
    setState(() {
      weatherData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather Forecast'),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: weatherData == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: weatherData.length,
                itemBuilder: (context, index) {
                  var dateTime = DateTime.fromMillisecondsSinceEpoch(
                      weatherData[index]['dt'] * 1000);
                  var formattedTime = DateFormat.Hm().format(dateTime);
                  var iconData;
                  switch (weatherData[index]['weather'][0]['main']) {
                    case 'Clear':
                      iconData = Icons.wb_sunny;
                      break;
                    case 'Rain':
                      iconData = Icons.beach_access;
                      break;
                    case 'Clouds':
                      iconData = Icons.cloud;
                      break;
                    default:
                      iconData = Icons.error;
                  }
                  return ListTile(
                    leading: Icon(
                      iconData,
                      color: Colors.yellowAccent,
                    ),
                    title: Text(
                        '${weatherData[index]['weather'][0]['description']}'),
                    subtitle: Text('${weatherData[index]['main']['temp']}°C'),
                    trailing: Text(
                      formattedTime,
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
