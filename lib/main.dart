import 'package:flutter/material.dart';

void main() {
  runApp(Assignment());
}

class Assignment extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhotoGalleryScreen(),
    );
  }
}

class PhotoGalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(16.0),
              child: const Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search for photos',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(13.0),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 16.0,
                runSpacing: 12.0,
                children: [
                  _buildPhotoButton(
                    imageUrl: 'https://i.pinimg.com/originals/da/38/5e/da385e215472f452465ecbb251bb4783.jpg',
                    caption: 'Photo 0',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 0!');
                    },
                  ),
                  _buildPhotoButton(
                    imageUrl: 'https://i0.wp.com/futballnews.com/wp-content/uploads/2022/06/20220624_141132.jpg?resize=750%2C938&ssl=1',
                    caption: 'Photo 1',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 1!');
                    },
                  ),
                  _buildPhotoButton(
                    imageUrl: 'https://sky.shorthandstories.com/messi-perfect-ending/assets/ckU1G7EE5Y/ap22352771589324-3677x2451.jpg',
                    caption: 'Photo 2',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 2!');
                    },
                  ),
                  _buildPhotoButton(
                    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8lMRp4BNymEoRyPgBokx3XZ8WJRKtuUpZob22bRj2YDMg5-7NGoClUfWDjzPzBAqGMgg&usqp=CAU',
                    caption: 'Photo 3',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 3!');
                    },
                  ),
                  _buildPhotoButton(
                    imageUrl: 'https://i.dailymail.co.uk/i/newpix/2018/06/04/11/4CE6A3F200000578-5803225-image-a-76_1528109710945.jpg',
                    caption: 'Photo 4',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 4!');
                    },
                  ),
                  _buildPhotoButton(
                    imageUrl: 'https://i.pinimg.com/originals/76/fa/48/76fa48ec3fc5a207bf8500f5c4ae2a15.jpg',
                    caption: 'Photo 5',
                    onPressed: () {
                      _showSnackBar(context, 'Clicked on Photo 5!');
                    },
                  ),
                ],
              ),
            ),
            const ListTile(

              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://i0.wp.com/futballnews.com/wp-content/uploads/2022/06/20220624_141132.jpg?resize=750%2C938&ssl=1'),
              ),
              title: Text('Photo 1'),
              subtitle: Text('Messi!! Messi!! Messi!!'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://sky.shorthandstories.com/messi-perfect-ending/assets/ckU1G7EE5Y/ap22352771589324-3677x2451.jpg'),
              ),
              title: Text('Photo 2'),
              subtitle: Text('Greatest Victory world witnesssed!'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://i.dailymail.co.uk/i/newpix/2018/06/04/11/4CE6A3F200000578-5803225-image-a-76_1528109710945.jpg'),
              ),
              title: Text('Photo 3'),
              subtitle: Text('The Goat!!'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSnackBar(context, 'Photos Uploaded Successfully!');
        },
        child: const Icon(Icons.upload),
      ),
    );
  }

  Widget _buildPhotoButton({
    required String imageUrl,
    required String caption,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(8.0)),
            child: Image.network(
              imageUrl,
              width: 105.0,
              height: 55.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              caption,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
