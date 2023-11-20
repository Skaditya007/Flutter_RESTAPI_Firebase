import 'package:flutter/material.dart';

///Constructor
///CreateState
///InitState

///DidChangeDependencies-dependency change
/// build - setState
/// didUpdateWidget- Parent's configuration change

///deactivate
///dispose

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;

  @override
  void initState() {
    print('init State');
    super.initState();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print('did update widget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('Did change Dependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('Build Method');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Text('$count',style: const TextStyle(fontSize: 32),),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){
          count++;
          setState(() {});
        },
      ),
    );
  }

  @override
  void deactivate() {
    print('Deactivated');
    super.deactivate();
  }

  @override
  void dispose() {
    print('Disposed!');
    super.dispose();
  }
}


