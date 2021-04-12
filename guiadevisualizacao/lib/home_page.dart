import 'package:flutter/material.dart';

import 'tab1.dart';

//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return DefaultTabController(length: 3,
//        child: Scaffold(
//          appBar: AppBar(
//            title: Text('Guia de vizualisação'),
//            backgroundColor: Colors.black54,
//            bottom: TabBar(
//              tabs: [
//                Tab(icon: Icon(Icons.home_outlined),),
//                Tab(icon: Icon(Icons.dashboard),),
//                Tab(icon: Icon(Icons.settings),),
//              ],
//            ),
//          ),
//          body: TabBarView(
//              children: [
//                Container(color: Colors.black26,),
//                Container(color: Colors.black38,),
//                Container(color: Colors.black45,),
//              ],
//          ),
//        )
//    );
//  }
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    // _tabController.addListener(() {
    //   print('Tab switching!');
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guia de vizualisação'),
        backgroundColor: Colors.black54,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.home_outlined),
            ),
            Tab(
              icon: Icon(Icons.dashboard),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: TabBarView(
        //physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Tab1(
          ),
          Container(
            color: Colors.black38,
          ),
          Container(
            color: Colors.black45,
          ),
        ],
      ),
    );
  }
}