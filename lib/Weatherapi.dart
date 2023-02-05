import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApi {
  static Future<dynamic> getWeather() async {
    var apiKey = '54a4215d65eb60a2a0c49c14c289a227';
    var url =
        'https://api.openweathermap.org/data/2.5/forecast?q=Mumbai&appid=$apiKey&units=metric';
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return data['list'].take(8).toList();
    } else {
      return print(response.statusCode);
      ;
    }
  }
}
