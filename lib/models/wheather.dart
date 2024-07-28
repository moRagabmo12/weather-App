class weatherModel {
  final String city;
  final String date;
  final String image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherState;

  weatherModel({
    required this.city,
    required this.date,
    required this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherState,
  });

  factory weatherModel.formJson(json) {
    return weatherModel(
      city: json["location"]["name"],
      date: json["current"]["last_updated"],
      temp: json["forecast"]["forecastday"][0]["avgtemp_c"],
      maxTemp: json["forecast"]["forecastday"][0]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday"][0]["mintemp_c"],
      weatherState: json["forecast"]["forecastday"][0]["condition"]["text"],
      image: json["forecast"]["forecastday"][0]["condition"]["text"]["icon"],
    );
  }
}
