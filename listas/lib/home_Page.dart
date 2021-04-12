import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("ListView"),
      ),
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (_, index) {
          return Text('Lista index $index');
        },
        separatorBuilder: (_, __) {
          return Divider();
        },
      ),
    );
  }
}