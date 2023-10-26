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

  // final MyItems=[
  // {"img": "https://cdn.bongdaplus.vn/Assets/Media/2022/12/19/26/Argentina.jpg", "title": "Messi!!"},
  // {"img": "https://e3.365dm.com/20/11/2048x1152/skynews-diego-maradona-kisses_5184268.jpg", "title": "Maradona!!"},
  // {"img": "https://media.newyorker.com/photos/590975611c7a8e33fb38f504/master/pass/Cassidy-JohanCruyff.jpg", "title": "Cruyff!!"},
  // {"img": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/jawapos/2022/12/pele-bermainlah.jpg", "title": "Pele!!"},
  // {"img": "https://historyofsoccer.info/wp-content/uploads/2022/08/did-zidane-won-world-cup.webp", "title": "Zidane!!"},
  // {"img": "https://images.ladbible.com/resize?type=jpeg&quality=70&width=648&fit=contain&gravity=null&url=https://s3-images.sportbible.com/s3/content/34377fc65fb020ddb8dbd4ed145fa012.jpg", "title": "Ronaldo Nazario!!"},
  // ];

  MySnackBar (context,msg) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amberAccent,
        title: Text("Photo Gallery",style: TextStyle(
          color:Colors.blue,
        ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:
          Column(
            children: [
              Container(
              margin: EdgeInsets.all(15),
                child:
                  Text('Welcome to WorldCup Winners Gallery!',style: TextStyle(
                  color:Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
              Padding(padding: EdgeInsets.all(5), child:
              TextField(decoration:
              InputDecoration(border :OutlineInputBorder(), labelText: ('Search for photos'),
              ),
              ),
              ),
              //
              // GridView.builder(
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 3,
              //     ),
              //     itemBuilder:(context,index) {
              //      return GestureDetector(
              //           onTap: () {
              //             MySnackBar(context, MyItems[index]['title']);
              //           },
              //           child:
              //           Container(
              //             margin: EdgeInsets.all(5),
              //             width:double.infinity,
              //             child:Column(
              //               children: [
              //                 Image.network(MyItems[index]['img']!,fit: BoxFit.fill),
              //               ],
              //             ),
              //
              //       ),
              //       );
              //     },
              //
              // )

              Container(
                child:
                Wrap(
                alignment: WrapAlignment.start,
                  children:[
                    ElevatedButton(
                      onPressed: () {  MySnackBar(context, 'CLicked on MESSI'); },
                      child: Column(
                        children: [
                          Image.network('https://cdn.bongdaplus.vn/Assets/Media/2022/12/19/26/Argentina.jpg',width:85,height:55,fit:BoxFit.fill),
                          Title(color: Colors.blue, child: Text('MESSI')),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {  MySnackBar(context, 'CLicked on MESSI'); },
                      child: Column(
                        children: [
                          Image.network('https://cdn.bongdaplus.vn/Assets/Media/2022/12/19/26/Argentina.jpg',width: 85,height: 55.0,fit:BoxFit.fill),
                         Text('MESSI'),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {  MySnackBar(context, 'CLicked on MESSI'); },
                      child: Column(
                        children: [
                          Image.network('https://cdn.bongdaplus.vn/Assets/Media/2022/12/19/26/Argentina.jpg',width:85,height: 55.0,fit:BoxFit.fill),
                          Title(color: Colors.blue, child: Text('MESSI')),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {  MySnackBar(context, 'CLicked on MESSI'); },
                      child: Column(
                        children: [
                          Image.network('https://cdn.bongdaplus.vn/Assets/Media/2022/12/19/26/Argentina.jpg',width:85,height: 55.0,fit:BoxFit.fill),
                          Title(color: Colors.blue, child: Text('MESSI')),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {  MySnackBar(context, 'CLicked on MESSI'); },
                      child: Column(
                        children: [
                          Image.network('https://cdn.bongdaplus.vn/Assets/Media/2022/12/19/26/Argentina.jpg',width:85,height: 55.0,fit:BoxFit.fill),
                          Title(color: Colors.blue, child: Text('MESSI')),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {  MySnackBar(context, 'CLicked on MESSI'); },
                      child: Column(
                        children: [
                          Image.network('https://cdn.bongdaplus.vn/Assets/Media/2022/12/19/26/Argentina.jpg',width:85,height: 55.0,fit:BoxFit.fill),
                          Title(color: Colors.blue, child: Text('MESSI')),
                        ],
                      ),
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
            FloatingActionButton(
                onPressed: () {
                  MySnackBar(context, 'Photos Uploaded Successfully!');
                },
                child: const Icon(Icons.upload),
              ),


            ],
              )

          ),
    );
  }
}