import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class  MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Adityas App',
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body:
        Center(
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){print('Tapped on Hello World!');},
                  onLongPress: (){print('Long Pressed on Hello World!');},
                  onDoubleTap: (){print('Double Tapped on Hello World!');},
                 child: Text('Hello World'),
                ),

                InkWell(
                  onTap: (){print('Tapped on InkWell!');},
                  onLongPress: (){print('Long Pressed on InkWell!');},
                  onDoubleTap: (){print('Double Tapped on InkWell!');},
                 child: Text('InkWell'),
                ),



              ],

            )
        )
    );
  }
}