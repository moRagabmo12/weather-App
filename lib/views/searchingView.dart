import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weather_app/models/wheather.dart';
import 'package:weather_app/services/weatherService.dart';
import 'package:weather_app/views/homeView.dart';

class searchingView extends StatelessWidget {
  const searchingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search a City')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            onSubmitted: (value) async {
              Navigator.of(context).pop();
            },
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 16,
              ),
              hintText: 'Enter city name',
              labelText: 'Search',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}

weatherModel? getWeatherModel;
