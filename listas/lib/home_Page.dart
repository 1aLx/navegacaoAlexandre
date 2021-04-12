import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myList = List.generate(40, (index) => 'Index name: $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("ListView"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.lightGreen,
                    radius: 40,
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: myList.length,
              itemBuilder: (_, index) {
                final listtileGenerated = myList
                    .map((e) => Card(
                          child: ExpansionTile(
                            title: Text(myList[index]),
                            leading: Icon(
                              Icons.account_circle,
                              size: 30,
                            ),
                            children: [
                              Text('Any text...'),
                            ],
                          ),
                        ))
                    .toList();
                return listtileGenerated[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
