import 'dart:html';

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

      weatherModel weatherModle = weatherModel.formJson(response.data);

      return weatherModle;
    } on DioException catch (e) {
      // TODO
      final String errorMessage = e.response?.data["error"]['message'] ??
          "oops there was an error ,try later";
      return throw (errorMessage);
    } catch (e) {
      return throw Exception('oops there was an error ,try later');
    }

    // oops was an error ,try later
  }
}
