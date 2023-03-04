import 'dart:convert';
import 'package:dis_man_sym/alerts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'weatherforecast.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String apiKey = '54a4215d65eb60a2a0c49c14c289a227';
  String city = "Mumbai";
  dynamic weatherData;

  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  Future<void> getWeatherData() async {
    String url =
        'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';
    Uri uri = Uri.parse(url);

    var response = await http.get(uri);
    if (response.statusCode == 200) {
      setState(() {
        weatherData = json.decode(response.body);
      });
    } else {
      print(response.statusCode);
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      child: weatherData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.white70,
                        ),
                        child: Icon(
                          Icons.wb_sunny,
                          size: 150,
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${weatherData['main']['temp'].round()}°C',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        fontSize: 50,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${weatherData['name']}',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${weatherData['weather'][0]['description'][0].toUpperCase()}${weatherData['weather'][0]['description'].substring(1)}',
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    weatherData['rain'] != null
                        ? Column(
                            children: [
                              Text(
                                'Precipitation: ${weatherData['rain']['1h']}mm',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Wind speed: ${weatherData['wind']['speed']} m s',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        : Text(
                            'Wind speed: ${weatherData['wind']['speed']} m s',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                  ],
                ),
              ),
            ),
    );
  }
}
