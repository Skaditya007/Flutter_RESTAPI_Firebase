import 'dart:convert';
import 'package:flutter/material.dart';

class WeatherData {
  final String city, condition;
  final double temperature, windSpeed;
  final int humidity;

  WeatherData({
    required this.city,
    required this.condition,
    required this.temperature,
    required this.windSpeed,
    required this.humidity,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      city: json['city'],
      temperature: json['temperature'].toDouble(),
      condition: json['condition'],
      humidity: json['humidity'],
      windSpeed: json['windSpeed'].toDouble(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WeatherData> weatherDataList = [];

  @override
  void initState() {
    super.initState();
    String jsonString = '''
      [

  {

    "city": "New York",

    "temperature": 20,

    "condition": "Clear",

    "humidity": 60,

    "windSpeed": 5.5

  },

  {

    "city": "Los Angeles",

    "temperature": 25,

    "condition": "Sunny",

    "humidity": 50,

    "windSpeed": 6.8

  },

  {

    "city": "London",

    "temperature": 15,

    "condition": "Partly Cloudy",

    "humidity": 70,

    "windSpeed": 4.2

  },

  {

    "city": "Tokyo",

    "temperature": 28,

    "condition": "Rainy",

    "humidity": 75,

    "windSpeed": 8.0

  },

  {

    "city": "Sydney",

    "temperature": 22,

    "condition": "Cloudy",

    "humidity": 55,

    "windSpeed": 7.3

  }

]
    ''';

    List<dynamic> jsonList = json.decode(jsonString);
    for (Map<String, dynamic> jsonData in jsonList) {
      WeatherData weatherData = WeatherData.fromJson(jsonData);
      weatherDataList.add(weatherData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: weatherDataList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City: ${weatherDataList[index].city}',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Temperature: ${weatherDataList[index].temperature}',
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      Text(
                        'Condition: ${weatherDataList[index].condition}',
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      Text(
                        'Humidity: ${weatherDataList[index].humidity}',
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      Text(
                        'Wind Speed: ${weatherDataList[index].windSpeed}',
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}