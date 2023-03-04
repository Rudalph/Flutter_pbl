import 'package:flutter/material.dart';
import 'weatherapi.dart';
import 'package:intl/intl.dart';

class WeatherForecast extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<WeatherForecast> {
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
          title: Text(
            'Weather Forecast',
            style: TextStyle(fontFamily: 'Raleway'),
          ),
          backgroundColor: Color(0xFFEE4D5F),
          foregroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFEE4D5F),
                Color.fromARGB(255, 236, 171, 118),
              ],
            ),
          ),
          child: weatherData == null
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
                      case 'smoke':
                        iconData = Icons.smoke_free;
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
                        '${weatherData[index]['weather'][0]['description']}',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                      ),
                      subtitle: Text(
                        '${weatherData[index]['main']['temp'].round()}°C',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                      ),
                      trailing: Text(
                        formattedTime,
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
