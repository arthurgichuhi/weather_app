import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/model/weatherResponseModel.dart';

//this file contains api methods to get weather data
class WeatherAPI {
  //initialize Dio package
  final dio = Dio();
  //your open weather apiKey
  final String apiKey = "";
  //get WeatherResponse data
  Future<WeatherResponse> getWeather(
      {required double lat, required double lon, required String api}) async {
    Response response = await dio.get(
        "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$api");
    var decodeJson = jsonDecode(response.toString());
    debugPrint("Weather Api ------------------------------- $decodeJson");
    return WeatherResponse.fromJson(decodeJson);
  }
}
