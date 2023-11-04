import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Stack(
          // alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.redAccent,
            ),

            //Positioned.fill fills and spreads :takes all tha space
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.greenAccent,
                    ),
                    Positioned(
                      bottom:0,
                      right:0,
                      child: Container(
                        height: 30,
                        width: 30,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom:10,
              left:15,
              child: Container(
                height: 30,
                width: 30,
                color: Colors.blue,
              ),
            ),
            Positioned(
              // left: 0,
              // bottom: 0,
              right: 0,
              top: 0,
              child: Container(
                height: 20,
                width: 20,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
