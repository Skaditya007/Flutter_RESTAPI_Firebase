import 'package:flutter/material.dart';
import 'package:atidya_flutter/home_screen.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: const HomeScreen(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.yellowAccent,
            backgroundColor: Colors.pinkAccent,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.orangeAccent,
          ),
        ),
      ),
      title: 'Adityas App',
    );
  }
}

