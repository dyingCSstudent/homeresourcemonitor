import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import '../dashboard.dart';
import '../reusabledrawer.dart';

class WaterDetailsPage extends StatefulWidget {
  @override
  WaterDetailsState createState() => WaterDetailsState();
}

class WaterDetailsState extends State<WaterDetailsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Water'), actions: <Widget>[]),
      drawer: myDrawer(context),
      //body: _buildGrid(),
    );
  }
}
