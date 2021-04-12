import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {

  @override
  void initState() {
    print('Tab1 sendo instanciada.');
    super.initState();
  }

  @override
  void dispose() {
    print('Tab1 sendo destruída.');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}