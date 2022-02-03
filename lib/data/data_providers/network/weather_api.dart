import 'package:dio/dio.dart';
import 'package:tutorial_app/data/model/weather_model.dart';

const TOKEN = "d27c49560b2aaf8a9303a7f8801a96f3";

class WeatherApi {
  static Future<Weather?> getWeather(String place) async {
    try {
      String requestUrl =
          "https://api.openweathermap.org/data/2.5/weather?q=$place&appid=$TOKEN";

      Response response = await Dio().get(requestUrl);
      if (response.statusCode == 200) {
        return weatherFromJson(response.toString());
      } else {
        return null;
      }
    } catch (err) {
      return null;
    }
  }
}
