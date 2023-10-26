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
      theme: ThemeData(
        primaryColor: Colors.yellowAccent,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:ElevatedButton.styleFrom(
            foregroundColor: Colors.redAccent,
            backgroundColor: Colors.yellowAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            // backgroundColor: Colors.grey,
            foregroundColor: Colors.redAccent
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amberAccent,
          foregroundColor: Colors.redAccent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          color: Colors.redAccent
          )
        ),
        textTheme: TextTheme(
          ///body medium is the usual one we use default value is 14
          bodyMedium: TextStyle(
            fontSize: 18,
          ),
          bodySmall: TextStyle(
            fontSize: 12,
          ),
          bodyLarge: TextStyle(
            fontSize: 22,
          ),

        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.pinkAccent,
            centerTitle: true,
            titleTextStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.redAccent
            )
        ),
      ),
      themeMode: ThemeMode.light,

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World'),
            Text('Hello World',style: Theme.of(context).textTheme.bodySmall,),
            Text('Hello World',style: Theme.of(context).textTheme.bodyLarge,),
            Text('Hello World',style: Theme.of(context).textTheme.headlineLarge,),
            Text('Hello World',style: Theme.of(context).textTheme.headlineSmall,),
            TextButton(onPressed:(){},
                child: Text('Tap Here'),
            ),
            ElevatedButton(onPressed:(){},
                child: Text('Tap Here'),
            ),

          ],
        ),
      ),

    );
  }
}
