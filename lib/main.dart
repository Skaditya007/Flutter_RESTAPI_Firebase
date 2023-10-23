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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String>students=
  [
    'Aditya',
    'Abir',
    'Shahad',
    'Rahat',
    'Sunny',
    'Naif',
    'Muhaimmin',
  ];

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

    ///GridView Builder:
    //      child: GridView.builder(
    //        itemCount: 30,
    //        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (BuildContext context, int index) {
    // return Column(children: [
    // Text(index.toString()),
    // Icon(Icons.adb_rounded),
    //
    // ]
    // );
    //
    // }
    // ),
    //    )


           ///ListView Builder:
           // child: ListView.builder(
           // itemCount: 20,
           // itemBuilder: (context,index){
           // return ListTile(
           // title: Text('Item Number '),
           // subtitle: Text('$index'),
           // );
           // }
           // )

    ///ListView.Seperated:
    // child: ListView.separated(itemCount:100,
    // separatorBuilder:(context,index){
    //   return Column(
    //   children: [
    //     Text(index.toString()),
    //   ],
    //   );
    // },
    //
    // itemBuilder: (BuildContext context, int index) {
    // return Column(
    // children: [
    //
    //   Divider(),
    //
    // ],
    // );
    //
    // } ,
    // ),

     child:ListView.separated(
         itemCount: students.length,

         itemBuilder: (context,index){
           return ListTile(
             title: Text(students[index]),
           );
         },

         separatorBuilder:(context,index){
       return Divider();
       },
     )


       )
    );
  }
}