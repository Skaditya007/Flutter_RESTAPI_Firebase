import 'package:flutter/material.dart';

class ListItem {
  String title;
  bool selected;

  ListItem({required this.title, this.selected = false});
}
class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  List<ListItem> items = [
    ListItem(title: 'Nike AirForce One'),
    ListItem(title: 'Nike Air Jordan 1'),
    ListItem(title: 'Nike Air Jordan Swoosh'),
    ListItem(title: 'Nike AirForce 2nd Gen'),
    ListItem(title: 'Nike Air Jordan 2K02'),
  ];
  int selectedItemCounts = 0;

  void selectedItemCount() {
    selectedItemCounts = items.where((item) => item.selected).length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selection Screen'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].title),
            onTap: () {
              setState(() {
                items[index].selected = !items[index].selected;
                selectedItemCount();
              });
            },
            tileColor: items[index].selected ? Colors.teal : null,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Selected Items',style: TextStyle(color: Colors.teal),),
                content: Text('Number of selected items: $selectedItemCounts'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close',style: TextStyle(color: Colors.teal),),
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.check),
      ),
    );
  }
}