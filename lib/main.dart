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

                Container(
                  width:100,
                  height:100,
                  alignment: Alignment.center,
                  margin:EdgeInsets.only(right:20),
                  padding:EdgeInsets.only(bottom:20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    // shape:
                    border: Border.all(color: Colors.black,width: 10),
                    borderRadius: BorderRadius.circular(16),

                  ),

                  child: Text('HaHa'),
                ),
                Container(
                  width: 200,
                  height: 100,
                  child: Text('YOYO'),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    // shape:
                    border: Border.all(color: Colors.redAccent,width: 10),
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight:Radius.circular(10)),

                  ),
                ),

                ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  textStyle: TextStyle(fontSize: 24,
                  fontWeight: FontWeight.w600),
                ),

                  onPressed: () { print('Sent!'); },
                onLongPress: (){print('Deleted!');},
                  child: Text('Send',style:TextStyle(
                    color: Colors.black87,
                  ),
                  ),
                ),
                TextButton( style: TextButton.styleFrom(
                  foregroundColor: Colors.black45,
                ),
                  onPressed: (){print('Resent!');},
                  onLongPress: (){print('Error!');},
                    child: const Text('Resend',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 26,fontWeight: FontWeight.w600 ,color: Colors.amberAccent)
                    ),
                ),

                IconButton(
                  onPressed: (){print('PRESSSED!');}, icon: Icon(Icons.add),
                ),

                OutlinedButton(onPressed: (){}, child: Text('Outlined'),
                ),

                Container(
                  // margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                      decoration: InputDecoration(
                        fillColor: Colors.purple,
                        filled: true,
                        hintText: 'Enter your Email.',
                        hintStyle: TextStyle(
                          color:Colors.white70
                        ),
                        suffixIcon: Icon(Icons.email_outlined),
                        suffixIconColor: Colors.white,
                        label : Text('Email Address'),
                        labelStyle: TextStyle(
                          color: Colors.white
                        ),
                         border: OutlineInputBorder(),
                         enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.redAccent),
                        ),

                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),

                      ),
                  ),
                ),

                SizedBox(height: 10,
                    width: 10,
                ),

                TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                    decoration: InputDecoration(
                      fillColor: Colors.purple,
                      filled: true,
                      hintText: 'Password.',
                      hintStyle: TextStyle(
                        color:Colors.white70
                      ),
                      suffixIcon: Icon(Icons.password),
                      suffixIconColor: Colors.amber,
                      label : Text('Enter Password'),
                      labelStyle: TextStyle(
                          color: Colors.white
                      ),
                    ),
                ),



              ],

            )
        )
    );
  }
}
