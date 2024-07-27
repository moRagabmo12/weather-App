import 'dart:developer';

import 'package:flutter/material.dart';

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
            onSubmitted: (value) {
              print(value);
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
