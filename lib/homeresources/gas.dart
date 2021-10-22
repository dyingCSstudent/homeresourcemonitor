import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import '../dashboard.dart';
import '../reusabledrawer.dart';

class GasDetailsPage extends StatefulWidget {
  @override
  GasDetailsState createState() => GasDetailsState();
}

class GasDetailsState extends State<GasDetailsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gas'), actions: <Widget>[]),
      drawer: myDrawer(context),
      //body: _buildGrid(),
    );
  }
}
