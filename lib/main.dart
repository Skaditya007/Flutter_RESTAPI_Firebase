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
          backgroundColor: Colors.pink,
          foregroundColor: Colors.amberAccent,
          centerTitle: true,
        ),
        body:
       Scrollbar(
         thickness: 15,
         radius: Radius.circular(10),
         child: GridView(
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
           children: [
             Icon(Icons.abc_outlined),
             Icon(Icons.abc_outlined),
             Icon(Icons.abc_outlined),
             Icon(Icons.abc_outlined),
             Icon(Icons.abc_outlined),
             Icon(Icons.abc_outlined),

           ],

         )


       ),
    );
  }
}