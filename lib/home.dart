import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int firstProductIndex = 1;
  int firstProductPrice = 51;
  int secondProductIndex = 1;
  int secondProductPrice = 30;
  int thirdProductIndex = 1;
  int thirdProductPrice = 43;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: 900,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('My Bag',style: TextStyle(fontSize: 31,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 85,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://th.bing.com/th/id/OIP.kXeveOo8gVVC0gVeus-VbwHaLH?pid=ImgDet&rs=1'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Stylish Shirt',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Color: ',
                                          style: TextStyle(fontSize: 16,),
                                        ),
                                        Text(
                                          'Black',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          ' Size: ',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text(
                                          'L',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      firstProductIndex++;
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    firstProductIndex.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (firstProductIndex == 1) {
                                        return;
                                      } else {
                                        firstProductIndex--;
                                      }
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  Text(
                                    (firstProductPrice * firstProductIndex)
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const Text(
                                    '\$',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 85,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/736x/28/bc/87/28bc87ea34f6b67e2a036c2a28221e3b.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hoddie',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Color: ',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text(
                                          'Black',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          ' Size: ',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text(
                                          'L',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      secondProductIndex++;
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    secondProductIndex.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (secondProductIndex == 1) {
                                        return;
                                      } else {
                                        secondProductIndex--;
                                      }
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  Text(
                                    (secondProductPrice * secondProductIndex).toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const Text(
                                    '\$',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 85,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://th.bing.com/th/id/R.734ef0895757a948cbb813aa9042d89f?rik=980W3Vvkn%2bkmmA&pid=ImgRaw&r=0'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sun Glass',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Color: ',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text(
                                          'Black',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          ' Size: ',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text(
                                          'L',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      thirdProductIndex++;
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    thirdProductIndex.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (thirdProductIndex == 1) {
                                        return;
                                      } else {
                                        thirdProductIndex--;
                                      }
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        elevation: 4,
                                        minimumSize: const Size(20, 20),
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.white),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  Text(
                                    (thirdProductPrice * thirdProductIndex)
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  const Text(
                                    '\$',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Total Amount:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Text(
                    ((firstProductPrice * firstProductIndex) +
                        (secondProductPrice * secondProductIndex) +
                        (thirdProductPrice * thirdProductIndex))
                        .toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const Text(
                    ' \$',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Congratulations',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  child: const Text('CHECK OUT'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}