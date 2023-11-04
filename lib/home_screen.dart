import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ResponsiveBuilder(builder: (context, sizeInformation) {
        return Center(child: Text(sizeInformation.deviceScreenType.toString()));
      }),
    );
  }
}
