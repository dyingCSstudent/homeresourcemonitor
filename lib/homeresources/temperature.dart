import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import '../dashboard.dart';
import '../reusabledrawer.dart';

class TemperatureDetailsPage extends StatefulWidget {
  @override
  TemperatureDetailsState createState() => TemperatureDetailsState();
}

class TemperatureDetailsState extends State<TemperatureDetailsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Temperature'), actions: <Widget>[]),
      drawer: myDrawer(context),
      //body: _buildGrid(),
    );
  }
}
