import 'package:flutter/material.dart';

class PortraitScreen extends StatelessWidget {
  const PortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: screenSize.width / 2,
                  backgroundImage: NetworkImage(
                      'https://i2-prod.mirror.co.uk/incoming/article28764073.ece/ALTERNATES/s1200c/0_Argentina-v-France-Final-FIFA-World-Cup-Qatar-2022.jpg'),
                ),
                const Text(
                  'The GOAT',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(5)),
            const Text(
              'Lionel Andres Messi, also known as Leo Messi, is an Argentine professional footballer who has won all possible individual awards and all kinds of international awards.He is the most decorated player and has most ballon dors ever! ',
            ),
            Row(
              children: [
                Expanded(child:Image.network('https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg',fit: BoxFit.fill), flex:1),
                Expanded(child:Image.network('https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg',fit: BoxFit.fill), flex:1),
                Expanded(child:Image.network('https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg',fit: BoxFit.fill), flex:1),
              ],
            ),
            const Padding(padding: EdgeInsets.all(5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child:Image.network('https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg',fit: BoxFit.fill), flex:1),
                Expanded(child:Image.network('https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg',fit: BoxFit.fill), flex:1),
                Expanded(child:Image.network('https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg',fit: BoxFit.fill), flex:1),
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
    Size screenSize = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.all(8.0),
      child:
      Row(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: screenSize.width / 6,
            backgroundImage: NetworkImage(
                'https://i2-prod.mirror.co.uk/incoming/article28764073.ece/ALTERNATES/s1200c/0_Argentina-v-France-Final-FIFA-World-Cup-Qatar-2022.jpg'),
          ),
          const SizedBox(
            width: 10,
          ),
          SingleChildScrollView(
            child: SizedBox(
              width:  (screenSize.width) - (screenSize.width / 3) - 26,
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
                        Image.network(
                          "https://www.indianpolitics.co.in/wp-content/uploads/2018/08/lionel-messi-150x150-1.jpg",
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
