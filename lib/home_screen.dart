import 'package:flutter/material.dart';

///MediaQuery

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    // Size size = MediaQuery.sizeOf(context);
    // print(size);
    // print(size.width);
    // print(size.height);
    // print(size.flipped);
    // print(size.aspectRatio);
    // Orientation orientation = MediaQuery.orientationOf(context);
    // print(orientation);
    // List<DisplayFeature> displayFeature = MediaQuery.displayFeaturesOf(context);
    // print(displayFeature);
    // print(MediaQuery.devicePixelRatioOf(context));
    print(MediaQuery.platformBrightnessOf(context));
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxWidth);

          if(constraints.maxWidth > 500)
            {
              return Center(child: Text("Too big screen"));
            }
          else {
            return Center(
              child: OrientationBuilder(
                  builder: (context, orientation) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(orientation == Orientation.portrait
                            ? 'Portrait'
                            : "Landscape"),

                        Wrap(
                          children: [
                            Text('DHJDhJSHFJHFJSHFJHFJHHVJHjhJHJHJHFJHJFHFgjfgjfidjgifdjgjdfkgj'),
                            Text('DHJDhJSHFJHFJSHFJHFJHHVJHjhJHJHJHFJHJFHFgjfgjfidjgifdjgjdfkgj'),
                            Text('DHJDhJSHFJHFJSHFJHFJHHVJHjhJHJHJHFJHJFHFgjfgjfidjgifdjgjdfkgj'),
                            Text('DHJDhJSHFJHFJSHFJHFJHHVJHjhJHJHJHFJHJFHF'),
                            Text('DHJDhJSHFJHFJSHFJHFJHHVJHjhJHJHJHFJHJFHF'),
                            Text('DHJDhJSHFJHFJSHFJHFJHHVJHjhJHJHJHFJHJFHF'),
                          ],
                        ),
                      ],
                    );
                  }
              ),

            );
          }
        }
      ),
    );
  }
}
