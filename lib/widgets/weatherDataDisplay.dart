import 'package:flutter/material.dart';

class weatherDataDisplay extends StatelessWidget {
  const weatherDataDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Alexandria',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Updated at : 23:46',
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/rainy.png'),
              Text(
                '17',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text(
                    'max Temp :17',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    'min Temp :10',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Light Rain',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
