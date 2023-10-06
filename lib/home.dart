import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color> buttonColors = List.filled(6, Colors.grey);
  List<String> size = ['S', 'M', 'L', 'XL', 'XXL', 'XXXL'];
  String snackbarMessage = '';

  void handleButtonPress(int index) {
    setState(() {
      buttonColors = List.filled(6, Colors.grey);
      buttonColors[index] = Colors.amber;
      snackbarMessage = 'Size: ${size[index]}';
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(snackbarMessage),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Size Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              alignment: WrapAlignment.start,
              spacing: 30,
              children: [
                for (int i = 0; i < 6; i++)
                  ElevatedButton(
                    onPressed: () => handleButtonPress(i),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        buttonColors[i],
                      ),
                    ),
                    child: Text(size[i]),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
