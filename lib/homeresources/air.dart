import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:homeresourcemonitor/reusabledrawer.dart';

import '../dashboard.dart';

class AirDetailsPage extends StatefulWidget {
  @override
  AirDetailsState createState() => AirDetailsState();
}

class AirDetailsState extends State<AirDetailsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Air'), actions: <Widget>[]),
      drawer: myDrawer(context),
      //body: _buildGrid(),
    );
  }
}
