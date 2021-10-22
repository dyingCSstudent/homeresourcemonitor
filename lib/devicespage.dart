import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:homeresourcemonitor/settingspage.dart';

import '../dashboard.dart';
import 'reusabledrawer.dart';

class MetersPage extends StatefulWidget {
  @override
  MetersState createState() => MetersState();
}

class MetersState extends State<MetersPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Devices'), actions: <Widget>[]),
      drawer: myDrawer(context),
      //body: _buildGrid(),
    );
  }
}
