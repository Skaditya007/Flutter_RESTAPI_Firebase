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

///Route:HomeScree
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading : IconButton(
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context)=> CartsScreen(),
              ),
            );
          },
          icon: Icon(Icons.shopping_cart),
        ),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body:
      Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Home',
                style: TextStyle(color:  Colors.pink,fontSize: 25,fontWeight: FontWeight.bold),
              ),

              ElevatedButton(onPressed:(){
                ///Navigation - Route home--> Route Settings
                ///Navigator:
                ///Navigator types:
                /// Navigator- push,pop(Back),replace,replaceAll,removeUntil
                ///Navigator.typeOfNavigation(CurrentLocation,Destination);
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=> SettingsScreen(),
                  ),
                );
              } ,
                child: Text('Go to Settings'),),

              ElevatedButton(onPressed:(){
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=> ProductListScreen(),
                  ),
                );
              } ,
                child: Text('Go to Product List'),),
            ]
        ),
      ),


    );
  }
}


///Route:SettingsScreen
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.pink,
        centerTitle: true,
      ),
      body:
      Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Settings',style: TextStyle(color:  Colors.amberAccent,fontSize: 25,fontWeight: FontWeight.bold),),

              ElevatedButton(onPressed: ()
              {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder:(context)=>HomeScreen()),
                      (route) => false,
                );
              },

                child: Text('Home'),
              )

            ]
        ),
      ),


    );
  }
}

///Route:CartsScreen(Orders)
class CartsScreen extends StatelessWidget {
  const CartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.pink,
        centerTitle: true,
      ),
      body:
      Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Orders',style: TextStyle(color:  Colors.amberAccent,fontSize: 25,fontWeight: FontWeight.bold),),
              TextButton(style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.redAccent,
              ),
                onPressed:(){

                  // Navigator.pop(context);
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(
                      builder: (context)=> SettingsScreen(),
                    ),
                  );
                },
                child:
                Text('Go to settings'),
              ),

              TextButton(onPressed:(){
                Navigator.pop(context);
              },
                child:
                Text('Back to Home'),
              )


            ]
        ),
      ),


    );
  }
}

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
      ),
      body: ListView.builder(
      itemCount: 20,
      itemBuilder: (context,index){
      return ListTile(
        onTap: (){
          Navigator.push(context,
            MaterialPageRoute(
              builder: (context)=> ProductDetailsScreen(productName: index.toString()),
            ),
          ).then((value) {
            print(value);
          });
        },
        title: Text(index.toString()),
        subtitle: Text('Product details :$index'),
      );
      }
      ),

    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final String productName;
  const ProductDetailsScreen({super.key,required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(productName, style: TextStyle(
            fontSize: 24,
            )
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context,'my-name-$productName');
            },
                child: Text("Back")),
          ],
        ),
      )
    );
  }
}
