import 'package:flutter/material.dart';
import 'package:weather_app/views/searchingView.dart';
import 'package:weather_app/widgets/noWeather.dart';
import 'package:weather_app/widgets/weatherDataDisplay.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: TextStyle(fontSize: 26),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return searchingView();
                    },
                  ),
                );
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: weatherDataDisplay(),
    );
  }
}
