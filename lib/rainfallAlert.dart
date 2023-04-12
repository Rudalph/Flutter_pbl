import 'dart:convert';
import 'package:dis_man_sym/alerts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String apiKey = '54a4215d65eb60a2a0c49c14c289a227';
  String city = "Mumbai";
  dynamic weatherData;
  List<String> cities = [
    'Mumbai',
    'Delhi',
    'Bangalore',
    'Hyderabad',
    'Chennai',
    'Kolkata',
    'Pune',
    'Ahmedabad',
    'Jaipur',
    'Surat',
    'Lucknow',
    'Kanpur',
    'Nagpur',
    'Visakhapatnam',
    'Bhopal',
    'Patna',
    'Agra',
    'Nashik',
    'Vadodara',
  ];

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
  Widget build(BuildContext context) {

    double temperature = weatherData['main']['temp'];
    String Dynamic_City_value=city;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => alerts(temperature: temperature, Dynamic_City_value: Dynamic_City_value,)),
    );

    String iconImage;
    if (weatherData != null) {
      switch (weatherData['weather'][0]['main']) {
        case 'Clear':
          iconImage = 'assets/images/sun.png';
          break;
        case 'Rain':
          iconImage = 'assets/images/rainy.png';
          break;
        case 'Clouds':
          iconImage = 'assets/images/cloudy.png';
          break;
        case 'Smoke':
          iconImage = 'assets/images/smoky.png';
          break;
        case 'Haze':
          iconImage = 'assets/images/smoky.png';
          break;
        case 'Thunderstorm':
          iconImage = 'assets/images/thunderstrom.png';
          break;
        default:
          iconImage = 'assets/images/cloudy.png';
      }
    } else {
      iconImage = 'assets/images/cloudy.png';
    }
    var static;
    // var temperature;
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
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 20),
                          Image.asset(
                            iconImage,
                            height: 150,
                            width: 150,
                          )
                        ]),
                    SizedBox(
                      height: 20,
                    ),

                    Text(
                      '${temperature.round()}°C',
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

                    // Text(
                    //        temperature > 10 ? "very hot": "normal"
                    // ),

                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 255, 225, 200).withOpacity(0.1),
                            Color.fromARGB(255, 255, 225, 200).withOpacity(0.1)
                          ],
                        ),
                      ),
                      child: DropdownButton(
                        value: city,
                        dropdownColor:
                            Color.fromARGB(255, 247, 87, 106).withOpacity(0.7),
                        items: cities.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 25,
                                    color: Colors.white,
                                  )),
                            );
                          },
                        ).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            city = value!;
                          });
                          getWeatherData(); // call getWeatherData to fetch weather data for the selected city
                        },
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
                    Container(
                      height: 20,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(30, 255, 255, 255),
                        ),
                        height: 80,
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            temperature > 40 && Dynamic_City_value=="Mumbai"
                            ?"MUMBAI:BE ALERT TEMPREATURE IS REACHING ABOVE 40 deg cel "
                            : temperature > 45 && Dynamic_City_value== "Delhi"
                            ?"DELHI:BE ALERT TEMPREATURE IS REACHING ABOVE 45 deg cel"
                            : temperature > 38 && Dynamic_City_value== "Bangalore"
                            ?"BANGLORE:BE ALERT TEMPREATURE IS REACHING ABOVE 38 deg cel"
                            : temperature > 40 && Dynamic_City_value== "Hyderabad"
                            ?"Hyderbad:BE ALERT TEMPREATURE IS REACHING ABOVE 40 deg cel"
                            : temperature > 45 && Dynamic_City_value== "Chennai"
                            ?"Chennai:BE ALERT TEMPREATURE IS REACHING ABOVE 45 deg cel"
                            : temperature > 45 && Dynamic_City_value== "Kolkata"
                            ?"Kolkata:BE ALERT TEMPREATURE IS REACHING ABOVE 45 deg cel"
                            : temperature > 45 && Dynamic_City_value== "Pune"
                            ?"Pune:BE ALERT TEMPREATURE IS REACHING ABOVE 45 deg cel"
                            : temperature > 50 && Dynamic_City_value== "Ahmedabad"
                            ?"Ahmedbad:BE ALERT TEMPREATURE IS REACHING ABOVE 50 deg cel"
                            : temperature > 50 && Dynamic_City_value== "Jaipur"
                            ?"Jaipur:BE ALERT TEMPREATURE IS REACHING ABOVE 50 deg cel"
                            : temperature > 45 && Dynamic_City_value== "Surat"
                            ?"Surat:BE ALERT TEMPREATURE IS REACHING ABOVE 45 deg cel"
                            : temperature > 47 && Dynamic_City_value== "Lucknow"
                            ?"Lucknow:BE ALERT TEMPREATURE IS REACHING ABOVE 47 deg cel"
                             : temperature > 50 && Dynamic_City_value== "Kanpur"
                            ?"Kanpur:BE ALERT TEMPREATURE IS REACHING ABOVE 50 deg cel"
                             : temperature > 50 && Dynamic_City_value== "Nagpur"
                            ?"Nagpur:BE ALERT TEMPREATURE IS REACHING ABOVE 50 deg cel"
                             : temperature > 45 && Dynamic_City_value== "Visakhapatnam"
                            ?"Visakhapatnam:BE ALERT TEMPREATURE IS REACHING ABOVE 45 deg cel"
                             : temperature > 45 && Dynamic_City_value== "Bhopal"
                            ?"Bhopal:BE ALERT TEMPREATURE IS REACHING ABOVE 45 deg cel"
                             : temperature > 45 && Dynamic_City_value== "Patna"
                            ?"Patna:BE ALERT TEMPREATURE IS REACHING ABOVE 45 deg cel"
                             : temperature > 50 && Dynamic_City_value== "Agra"
                            ?"Agra:BE ALERT TEMPREATURE IS REACHING ABOVE 50 deg cel"
                             : temperature > 45 && Dynamic_City_value== "Nashik"
                            ?"Nashik:BE ALERT TEMPREATURE IS REACHING ABOVE 45 deg cel"
                             : temperature > 45 && Dynamic_City_value== "Vadodara"
                            ?"Vadodara:BE ALERT TEMPREATURE IS REACHING ABOVE 45 deg cel"
                            :"Alerts for ${city} will be displayed here",

                            
                            // temperature > 35
                            //     ? "BE ALERT"
                            //     : "ALERTS GENERATED ARE SEEN HERE",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700),
                          ),
                        ))
                  ],
                ),
              ),
            ),
    );
  }
}
