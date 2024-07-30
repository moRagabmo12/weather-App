import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/wheather.dart';

class weatherService {
  final Dio dio = Dio();
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "7c6fc079b096432090d130003242807";

  Future<weatherModel> getweather({required String cityName}) async {
    try {
      Response response =
          await dio.get("$baseUrl/forecast.json?key=$apiKey&q=$cityName");

      weatherModel weatherModle1 = weatherModel.formJson(response.data);
      return weatherModle1;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data["error"]['message'] ??
          "oops there was an error ,try later";
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('oops there was an error ,try  again');
    }

    // oops was an error ,try later
  }
}
