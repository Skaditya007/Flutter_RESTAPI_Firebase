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
      home: HomeScreen(),
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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('GOAT Profile'),
      ),
      body:
        OrientationBuilder(
          builder:(context,orientation){
            return orientation == Orientation.portrait
                ? const PortraitScreen()
                : const LandscapeScreen();
          },
        ),
    );
  }
}
