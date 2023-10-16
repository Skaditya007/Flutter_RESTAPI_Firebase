import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextList(),
    );
  }
}

class TextList extends StatefulWidget {
  @override
  _TextListState createState() => _TextListState();
}

class _TextListState extends State<TextList> {
  List<Item> items = [];
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Spacer(),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Implement search functionality
                },
              ),
            ],
          ),
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              labelText: 'Title',
              hintText: 'Enter the title',
            ),
          ),
          TextField(
            controller: descriptionController,
            decoration: InputDecoration(
              labelText: 'Description',
              hintText: 'Enter the description',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              addItem();
            },
            child: Text('Add'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index].title),
                  subtitle: Text(items[index].description),
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                  onLongPress: () {
                    showOptionsDialog(index);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void addItem() {
    String title = titleController.text;
    String description = descriptionController.text;

    if (title.isNotEmpty && description.isNotEmpty) {
      setState(() {
        items.add(Item(title, description));
        titleController.clear();
        descriptionController.clear();
      });
    }
  }

  void showOptionsDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert!!'),
          actions: <Widget>[
            TextButton(
              child: Text('Edit'),
              onPressed: () {
                Navigator.of(context).pop();
                showEditBottomSheet(index);
              },
            ),
            TextButton(
              child: Text('Delete'),
              onPressed: () {
                setState(() {
                  items.removeAt(index);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showEditBottomSheet(int index) {
    String editedTitle = items[index].title;
    String editedDescription = items[index].description;

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text('Edit Item'),
              TextField(
                controller: TextEditingController(text: editedTitle),
                onChanged: (value) {
                  editedTitle = value;
                },
              ),
              TextField(
                controller: TextEditingController(text: editedDescription),
                onChanged: (value) {
                  editedDescription = value;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    items[index].title = editedTitle;
                    items[index].description = editedDescription;
                  });
                  Navigator.of(context).pop();
                },
                child: Text('Save'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Item {
  String title;
  String description;

  Item(this.title, this.description);
}