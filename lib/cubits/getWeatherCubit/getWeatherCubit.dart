import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/getWeatherCubit/getWeatherStates.dart';
import 'package:weather_app/services/weatherService.dart';
import 'package:weather_app/views/searchingView.dart';

class getWeatherCubit extends Cubit<weatherState> {
  getWeatherCubit() : super(noWeatherstate());

  void getWeather({required cityName}) async {
    try {
      getWeatherModel = await weatherService().getweather(cityName: cityName);

      emit(loadedWeatherState());
    } on Exception catch (e) {
      emit(failureWeatherstate());
    }
  }

  //code
}
