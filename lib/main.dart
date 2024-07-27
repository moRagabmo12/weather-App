import 'package:flutter/material.dart';
import 'package:weather_app/views/homeView.dart';
import 'package:weather_app/views/searchingView.dart';

void main() {
  runApp(Weather_app());
}

class Weather_app extends StatelessWidget {
  const Weather_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeView(),
    );
  }
}
