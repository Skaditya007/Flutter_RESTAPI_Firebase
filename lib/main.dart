import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(
    const NikeBangladeshApp(),
  );

}

class NikeBangladeshApp extends StatelessWidget {
  const NikeBangladeshApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.teal,
          )
      ),
      home: const SelectionScreen(),
    );
  }
}