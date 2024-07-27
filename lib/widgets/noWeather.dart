import 'package:flutter/material.dart';

class noWeather extends StatelessWidget {
  const noWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'There is no weather 😔 start',
            style: TextStyle(fontSize: 26),
          ),
          Text(
            'searching now 🔎',
            style: TextStyle(fontSize: 26),
          ),
        ],
      ),
    );
  }
}
