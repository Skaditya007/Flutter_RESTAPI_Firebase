import 'package:flutter/material.dart';

class PortraitScreen extends StatelessWidget {
  const PortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pink,
                  radius: screenSize.width / 2,
                  child: CircleAvatar(
                    radius: (screenSize.width / 2),
                    backgroundImage: const NetworkImage(
                        'https://fifpro.org/media/fhmfhvkx/messi-world-cup.jpg?center=0.31512414378031967,0.48356841796117644&mode=crop&heightratio=0.64&width=1600&rnd=133210253587130000'),
                  ),
                ),
                const Text(
                  'Lionel Messi',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              'Lionel Messi, also known as Leo Messi, is an Argentine professional footballer who plays as a forward for and captains both Major League Soccer club Inter Miami and the Argentina national team.',
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.count(
              physics: const ScrollPhysics(),
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                for (int i = 1; i <= 8; i++)
                  Image.asset(
                      "assets/images/messi.jpg.jpeg",
                      fit: BoxFit.fill),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LandscapeScreen extends StatelessWidget {
  const LandscapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: screenSize.width / 6,
            child: CircleAvatar(
              radius: (screenSize.width / 6),
              backgroundImage: const NetworkImage(
                  'https://fifpro.org/media/fhmfhvkx/messi-world-cup.jpg?center=0.31512414378031967,0.48356841796117644&mode=crop&heightratio=0.64&width=1600&rnd=133210253587130000'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: (screenSize.width) - (screenSize.width / 3) - 26,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Lionel Messi',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Lionel Messi, also known as Leo Messi, is an Argentine professional footballer who plays as a forward for and captains both Major League Soccer club Inter Miami and the Argentina national team.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GridView.count(
                    physics: const ScrollPhysics(),
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6,
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    children: [
                      for (int i = 1; i <= 8; i++)
                        Image.asset(
                          "assets/images/messi.jpg.jpeg",
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}