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
          centerTitle: true,
        ),
        body:
       Scrollbar(
         thickness: 15,
         radius: Radius.circular(10),
         child: ListView(
           scrollDirection: Axis.vertical,
           children:[
          ListTile(
            iconColor: Colors.pink,
            title: Text('Username'),
            titleTextStyle: TextStyle(color: Colors.pink),
            subtitle: Text('user@gmail.com'),
            leading: Icon(Icons.emergency),
            trailing: Icon(Icons.menu),
            onTap: (){
              print('list Tile pressed');
            },
          ),

             Divider(
               indent: 30,
               height: 24,
               thickness: 2,
               color: Colors.amberAccent,
               endIndent: 30
               ,
             ),

             ListTile(
               iconColor: Colors.pink,
               title: Text('Username'),
               subtitle: Text('user@gmail.com'),
               leading: Icon(Icons.emergency),
               trailing: Icon(Icons.menu),
               onTap: (){
                 print('list Tile pressed');
               },
             ),

             Divider(
               indent: 30,
               height: 24,
               thickness: 2,
               color: Colors.amberAccent,
               endIndent: 30
               ,
             ),


             ListTile(
               iconColor: Colors.pink,
               title: Text('Username'),
               subtitle: Text('user@gmail.com'),
               leading: Icon(Icons.emergency),
               trailing: Column(
                 children: [
                   Icon(Icons.arrow_right_alt),
                   Icon(Icons.arrow_right_alt),
                 ],
               ),
               onTap: (){
                 print('list Tile pressed');
               },
             ),

             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),
             Text('dhjsfhdf'),

      ]
         ),
       ),
    );
  }
}