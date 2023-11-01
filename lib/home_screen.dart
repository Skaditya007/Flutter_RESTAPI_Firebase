import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Column(
          children: [
            // AspectRatio(
            //   ///Ratio- Width:Height
            //   ///Default Ratio - 16/16
            //   ///100:100
            //   aspectRatio: 16 / 16,
            //   child: Container(
            //     color: Colors.yellowAccent,
            //     child: Image.network(
            //       "https://pbs.twimg.com/media/F9t-WwbaIAA11r3.jpg",
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),

            // Container(
            //   width: MediaQuery.sizeOf(context).width,
            //   height: MediaQuery.sizeOf(context).width/2,
            //   color: Colors.yellowAccent,
            //   child: FractionallySizedBox(
            //     widthFactor:0.5,//has to be 0 to 1
            //     heightFactor:0.6,//has to be 0 to 1
            //     child: Container(
            //       color: Colors.redAccent,
            //     ),
            //   ),
            // ),
            // Flexible(
            //   fit: FlexFit.tight,
            //   flex: 1,
            //   child: Container(
            //     color: Colors.yellowAccent,
            //     width:  MediaQuery.sizeOf(context).width,
            //   ),
            // ),
            //
            // Flexible(
            //   fit: FlexFit.tight,
            //   flex: 2,
            //   child: Container(
            //     color: Colors.greenAccent,
            //     width:  MediaQuery.sizeOf(context).width,
            //   ),
            // ),
            //
            // Flexible(
            //   fit: FlexFit.tight,
            //   flex: 3,
            //   child: Container(
            //     color: Colors.blueAccent,
            //     width:  MediaQuery.sizeOf(context).width,
            //   ),
            // ),
            //
            // Flexible(
            //   child: Row(
            //     children: [
            //       Flexible(
            //         fit: FlexFit.tight,
            //         flex: 2,
            //         child: Container(
            //           color: Colors.greenAccent,
            //           width:  MediaQuery.sizeOf(context).width,
            //         ),
            //       ),
            //
            //       Flexible(
            //         fit: FlexFit.tight,
            //         flex: 1,
            //         child: Container(
            //           color: Colors.redAccent,
            //           width:  MediaQuery.sizeOf(context).width,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            Container(
              color: Colors.grey,
              height: 100,
            ),

            Expanded(
              flex: 3,
              child: Container(
                color: Colors.greenAccent,
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                color: Colors.redAccent,
                width: double.infinity,
                alignment: Alignment.center,
                child: SizedBox(
                  width: 100,
                  height: 20,
                  child:
                      FittedBox(child: Text('ADJDHJHFLFJ ffhdj  hgghsn sjh')),
                ),
              ),
            ),
          ],
        ));
  }
}
