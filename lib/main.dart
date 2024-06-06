import 'package:flutter/material.dart';
import 'package:myapp/Container/CreateContainer.dart';
import 'package:myapp/Container/CreateText.dart';
import 'package:myapp/Container/ShowImage.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Flutter App'),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.dashboard)),
            Tab(icon: Icon(Icons.image)),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          CreateContainer(),
          CreateText(),
          ShowImage(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
