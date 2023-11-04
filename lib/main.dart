import 'package:flutter/material.dart';

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
            color: Colors.yellowAccent,
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
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      spacing: 200,
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.network(
                              "https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg"),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.network(
                              "https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg"),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.network(
                              "https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg"),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.network(
                              "https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg"),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.network(
                              "https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg"),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.network(
                              "https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg"),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.network(
                              "https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg"),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.network(
                              "https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg"),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.network(
                              "https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg"),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Image.network(
                              "https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else
            return GridView.builder(
                 itemCount:10,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                 itemBuilder: (BuildContext context, int index) {
          return Column(children: [
           Image.network('https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg'),
          ]
          );

          }
          );
        },
      ),
    );
  }
}
