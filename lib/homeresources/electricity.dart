import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import '../dashboard.dart';
import '../reusabledrawer.dart';

class ElectricityDetailsPage extends StatefulWidget {
  @override
  ElectricityDetailsState createState() => ElectricityDetailsState();
}

class ElectricityDetailsState extends State<ElectricityDetailsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Electricity'), actions: <Widget>[]),
      drawer: myDrawer(context),
      //body: _buildGrid(),
    );
  }
}
